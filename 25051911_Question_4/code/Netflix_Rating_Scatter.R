Netflix_TMDB_Scatter_Movies <- function(titles,
                                        x_var = c("runtime", "tmdb_popularity"),
                                        top_n_genres = 8,
                                        log_x = NULL,
                                        min_x = NULL,
                                        max_x = NULL,
                                        Title = NULL,
                                        Subtitle = NULL) {
  
  library(tidyverse)
  library(scales)
  
  x_var <- match.arg(x_var)
  
  # Automatically log TMDB popularity, but not runtime
  if (is.null(log_x)) {
    log_x <- x_var == "tmdb_popularity"
  }
  
  x_lab <- case_when(
    x_var == "runtime" ~ "Runtime",
    x_var == "tmdb_popularity" ~ "TMDB popularity",
    TRUE ~ x_var
  )
  
  if (is.null(Title)) {
    Title <- glue::glue("Movie TMDB score versus {x_lab}")
  }
  
  if (is.null(Subtitle)) {
    Subtitle <- "Only movies included; dots are coloured by main genre"
  }
  
  df_clean <-
    titles %>%
    filter(
      str_to_lower(type) == "movie",
      !is.na(tmdb_score),
      !is.na(.data[[x_var]]),
      !is.na(genres),
      .data[[x_var]] > 0
    ) %>%
    mutate(
      genres_clean = as.character(genres),
      genres_clean = str_remove_all(genres_clean, "\\[|\\]|'|\""),
      genres_clean = str_squish(genres_clean),
      
      main_genre = str_split(genres_clean, ","),
      main_genre = map_chr(main_genre, ~ str_trim(.x[1])),
      main_genre = str_to_title(main_genre)
    ) %>%
    filter(
      main_genre != "",
      !is.na(main_genre)
    )
  
  if (!is.null(min_x)) {
    df_clean <-
      df_clean %>%
      filter(.data[[x_var]] >= min_x)
  }
  
  if (!is.null(max_x)) {
    df_clean <-
      df_clean %>%
      filter(.data[[x_var]] < max_x)
  }
  
  top_genres <-
    df_clean %>%
    count(main_genre, sort = TRUE) %>%
    slice_head(n = top_n_genres) %>%
    pull(main_genre)
  
  plot_df <-
    df_clean %>%
    filter(main_genre %in% top_genres)
  
  # Create variable used for slope calculation
  slope_df <-
    plot_df %>%
      mutate(
        x_for_model = if (log_x) log10(.data[[x_var]]) else .data[[x_var]]
      )
  
  # Estimate line of best fit
  reg_fit <- lm(tmdb_score ~ x_for_model, data = slope_df)
  
  slope_value <-
    coef(reg_fit)[["x_for_model"]]
  
  slope_label <-
    if (log_x) {
      glue::glue("Gradient = {round(slope_value, 3)}\nper 1 log10 unit increase")
    } else {
      glue::glue("Gradient = {round(slope_value, 3)}")
    }
  
  # Position label neatly inside graph
  label_x <-
    if (log_x) {
      10^(quantile(log10(plot_df[[x_var]]), 0.05, na.rm = TRUE))
    } else {
      quantile(plot_df[[x_var]], 0.05, na.rm = TRUE)
    }
  
  label_y <-
    quantile(plot_df$tmdb_score, 0.95, na.rm = TRUE)
  
  g <-
    ggplot(
      plot_df,
      aes(
        x = .data[[x_var]],
        y = tmdb_score,
        colour = main_genre
      )
    ) +
    geom_point(alpha = 0.55, size = 2) +
    
    # Overall line of best fit
    geom_smooth(
      data = plot_df,
      aes(
        x = .data[[x_var]],
        y = tmdb_score
      ),
      inherit.aes = FALSE,
      method = "lm",
      se = FALSE,
      colour = "black",
      linewidth = 1
    ) +
    
    # Gradient label
    annotate(
      "label",
      x = label_x,
      y = label_y,
      label = slope_label,
      hjust = 0,
      size = 3.5
    ) +
    
    labs(
      title = Title,
      subtitle = Subtitle,
      x = x_lab,
      y = "TMDB score",
      colour = "Genre",
      caption = "Source: Netflix titles data"
    ) +
    theme_bw() +
    theme(
      legend.position = "right",
      plot.title = element_text(size = 14, face = "bold"),
      plot.subtitle = element_text(size = 11)
    )
  
  if (log_x) {
    g <-
      g +
      scale_x_log10(labels = comma) +
      labs(x = glue::glue("{x_lab} (log scale)"))
  } else {
    g <-
      g +
      scale_x_continuous(labels = comma)
  }
  
  g
}