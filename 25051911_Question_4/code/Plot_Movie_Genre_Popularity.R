Plot_Movie_Genre_Popularity <- function(df,
                                        Country,
                                        country_col = "production_countries",
                                        genre_col = "genres",
                                        year_col = "release_year",
                                        popularity_col = "tmdb_popularity",
                                        type_col = "type",
                                        movie_value = "MOVIE",
                                        top_n_genres = NULL,
                                        min_titles_per_year_genre = 1,
                                        Title = NULL,
                                        Subtitle = NULL) {
  
  library(tidyverse)
  
  df_plot <-
    df %>%
    filter(.data[[type_col]] == movie_value) %>%   # keep movies only
    
    mutate(
      first_genre = .data[[genre_col]] %>%
        as.character() %>%
        str_remove_all("\\[|\\]|'|\"") %>%
        str_split_fixed(",", 2) %>%
        .[, 1] %>%
        str_squish() %>%
        str_to_title(),
      
      year_clean = as.numeric(.data[[year_col]]),
      popularity_clean = as.numeric(.data[[popularity_col]]),
      country_clean = as.character(.data[[country_col]])
    ) %>%
    
    filter(str_detect(country_clean, fixed(Country))) %>%
    
    filter(
      !is.na(first_genre),
      first_genre != "",
      !is.na(year_clean),
      !is.na(popularity_clean)
    )
  
  if (!is.null(top_n_genres)) {
    
    keep_genres <-
      df_plot %>%
      count(first_genre, sort = TRUE) %>%
      slice_head(n = top_n_genres) %>%
      pull(first_genre)
    
    df_plot <-
      df_plot %>%
      filter(first_genre %in% keep_genres)
  }
  
  df_summary <-
    df_plot %>%
    group_by(year_clean, first_genre) %>%
    summarise(
      avg_tmdb_popularity = mean(popularity_clean, na.rm = TRUE),
      n_titles = n(),
      .groups = "drop"
    ) %>%
    filter(n_titles >= min_titles_per_year_genre)
  
  g <-
    df_summary %>%
    ggplot(aes(
      x = year_clean,
      y = avg_tmdb_popularity,
      colour = first_genre,
      group = first_genre
    )) +
    geom_line(linewidth = 1) +
    geom_point(size = 1.8, alpha = 0.8) +
    theme_bw() +
    labs(
      title = ifelse(is.null(Title),
                     paste("Average TMDB popularity of movies by genre in", Country),
                     Title),
      subtitle = ifelse(is.null(Subtitle),
                        "Only movies included; first listed genre used for each title",
                        Subtitle),
      x = "Year",
      y = "Average TMDB popularity",
      colour = "Genre"
    ) +
    theme(
      legend.position = "bottom",
      legend.title = element_blank(),
      plot.title = element_text(size = 14),
      plot.subtitle = element_text(size = 11)
    )
  
  g
}