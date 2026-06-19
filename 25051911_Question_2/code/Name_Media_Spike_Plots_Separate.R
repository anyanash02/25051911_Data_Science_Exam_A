Name_Media_Spike_Plots_Separate <- function(df_names,
                                            matched_characters,
                                            top_n = 5,
                                            time_unit = c("year", "decade"),
                                            min_year = NULL,
                                            max_year = 2014) {
  
  library(tidyverse)
  library(ggnewscale)
  
  time_unit <- match.arg(time_unit)
  
  clean_utf8 <- function(x) {
    x <- as.character(x)
    iconv(x, from = "", to = "UTF-8", sub = "")
  }
  
  max_na <- function(x) {
    if (all(is.na(x))) {
      NA_real_
    } else {
      max(x, na.rm = TRUE)
    }
  }
  
  matched_clean <-
    matched_characters %>%
    mutate(across(where(is.character), clean_utf8))
  
  if (!"tmdb_popularity" %in% names(matched_clean)) {
    stop("matched_characters does not contain tmdb_popularity. Re-run the merge and matching steps after adding tmdb_popularity.")
  }
  
  # ----------------------------------------------------------
  # 1. Choose top 5 male and top 5 female matched names
  # ----------------------------------------------------------
  
  top_names <-
    matched_clean %>%
    filter(
      !is.na(matched_baby_name),
      !is.na(Gender),
      !is.na(rank_improvement)
    ) %>%
    arrange(Gender, matched_baby_name, desc(rank_improvement)) %>%
    distinct(Gender, matched_baby_name, .keep_all = TRUE) %>%
    group_by(Gender) %>%
    slice_max(
      order_by = rank_improvement,
      n = top_n,
      with_ties = FALSE
    ) %>%
    ungroup() %>%
    transmute(
      Gender,
      Name = matched_baby_name,
      rank_improvement
    )
  
  name_order <-
    top_names %>%
    arrange(Gender, desc(rank_improvement)) %>%
    pull(Name) %>%
    unique()
  
  # ----------------------------------------------------------
  # 2. Filter national baby-name data
  # ----------------------------------------------------------
  
  names_plot_data <-
    df_names %>%
    mutate(
      Name = clean_utf8(Name),
      Gender = clean_utf8(Gender),
      Year = as.integer(Year),
      n = as.numeric(n)
    ) %>%
    inner_join(top_names, by = c("Gender", "Name")) %>%
    filter(Year <= max_year)
  
  if (!is.null(min_year)) {
    names_plot_data <-
      names_plot_data %>%
      filter(Year >= min_year)
  }
  
  if (time_unit == "decade") {
    
    names_plot_data <-
      names_plot_data %>%
      mutate(plot_year = floor(Year / 10) * 10) %>%
      group_by(Gender, Name, plot_year) %>%
      summarise(
        births = sum(n, na.rm = TRUE),
        .groups = "drop"
      )
    
  } else {
    
    names_plot_data <-
      names_plot_data %>%
      mutate(plot_year = Year) %>%
      group_by(Gender, Name, plot_year) %>%
      summarise(
        births = sum(n, na.rm = TRUE),
        .groups = "drop"
      )
  }
  
  names_plot_data <-
    names_plot_data %>%
    mutate(Name = factor(Name, levels = name_order))
  
  # ----------------------------------------------------------
  # 3. Create one media-release star per name-year
  # ----------------------------------------------------------
  
  release_markers <-
    matched_clean %>%
    inner_join(
      top_names %>%
        rename(matched_baby_name = Name),
      by = c("Gender", "matched_baby_name")
    ) %>%
    mutate(
      release_year = as.integer(release_year),
      tmdb_popularity = as.numeric(tmdb_popularity)
    ) %>%
    filter(
      !is.na(release_year),
      release_year <= max_year
    )
  
  if (!is.null(min_year)) {
    release_markers <-
      release_markers %>%
      filter(release_year >= min_year)
  }
  
  release_markers <-
    release_markers %>%
    mutate(
      plot_year = if (time_unit == "decade") {
        floor(release_year / 10) * 10
      } else {
        release_year
      },
      Name = matched_baby_name
    ) %>%
    
    # One star per name-year, even if there are many releases
    group_by(Gender, Name, plot_year) %>%
    summarise(
      tmdb_popularity = max_na(tmdb_popularity),
      titles = paste(unique(title), collapse = "; "),
      n_releases = n_distinct(title),
      .groups = "drop"
    ) %>%
    mutate(
      Name = factor(Name, levels = name_order),
      tmdb_popularity_plot = replace_na(tmdb_popularity, 0)
    )
  
  # ----------------------------------------------------------
  # 4. Make one separate plot per gender
  # ----------------------------------------------------------
  
  make_one_gender_plot <- function(gender_value) {
    
    names_gender <-
      names_plot_data %>%
      filter(Gender == gender_value)
    
    releases_gender <-
      release_markers %>%
      filter(Gender == gender_value)
    
    min_y <-
      min(
        c(names_gender$plot_year, releases_gender$plot_year),
        na.rm = TRUE
      )
    
    ggplot(names_gender, aes(x = Name, y = plot_year)) +
      geom_point(
        aes(size = births),
        shape = 21,
        fill = "grey75",
        colour = "grey30",
        alpha = 0.65
      ) +
      scale_size_continuous(
        name = "Number of babies",
        labels = scales::comma,
        range = c(1.5, 11)
      ) +
      
      ggnewscale::new_scale("size") +
      
      geom_point(
        data = releases_gender,
        aes(x = Name, y = plot_year, size = tmdb_popularity_plot),
        inherit.aes = FALSE,
        shape = 8,
        stroke = 1.2
      ) +
      scale_size_continuous(
        name = "TMDB popularity",
        range = c(2, 8)
      ) +
      scale_y_continuous(
        limits = c(min_y, max_year),
        breaks = scales::pretty_breaks(n = 10)
      ) +
      labs(
        title = paste0("Baby-name popularity and media releases: ", gender_value),
        subtitle = paste0(
          "Top ", top_n, " matched names. Bubble size = number of babies; star size = TMDB popularity. Years end at ", max_year, "."
        ),
        x = "Name",
        y = if (time_unit == "decade") "Decade" else "Year"
      ) +
      theme_bw() +
      theme(
        legend.position = "bottom",
        axis.text.x = element_text(angle = 45, hjust = 1)
      )
  }
  
  gender_values <-
    top_names %>%
    distinct(Gender) %>%
    pull(Gender)
  
  plots <-
    gender_values %>%
    set_names() %>%
    map(make_one_gender_plot)
  
  plots
}