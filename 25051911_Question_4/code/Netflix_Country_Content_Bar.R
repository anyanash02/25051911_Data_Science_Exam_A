Netflix_Country_Content_Bar <- function(df,
                                        top_n = 10,
                                        Title = "Top Netflix content-producing countries",
                                        Subtitle = "Stacked by content type, with median IMDb score above each bar") {
  
  library(tidyverse)
  
  
  # identify top 10 countries by number of titles
  top_countries <-
    df %>%
    count(country, sort = TRUE) %>%
    slice_head(n = top_n) %>%
    pull(country)
  
  #  data for stacked bars
  plot_df <-
    df %>%
    filter(country %in% top_countries) %>%
    count(country, type, name = "n_titles")
  
  # data for median IMDb labels above bars
  label_df <-
    df %>%
    filter(country %in% top_countries) %>%
    group_by(country) %>%
    summarise(
      total_titles = n(),
      median_imdb = median(imdb_score, na.rm = TRUE),
      .groups = "drop"
    ) %>%
    mutate(
      label = paste0(round(median_imdb, 1))
    )
  
  # set country order from smallest to largest, so largest appears on the right
  country_order <-
    label_df %>%
    arrange(total_titles) %>%
    pull(country)
  
  plot_df <-
    plot_df %>%
    mutate(country = factor(country, levels = country_order))
  
  label_df <-
    label_df %>%
    mutate(country = factor(country, levels = country_order))
  
  # plot
  g <-
    ggplot(plot_df, aes(x = country, y = n_titles, fill = type)) +
    geom_col(width = 0.75) +
    
    geom_text(
      data = label_df,
      aes(x = country, y = total_titles, label = label),
      inherit.aes = FALSE,
      vjust = -0.5,
      size = 3.5
    ) +
    
    scale_y_continuous(expand = expansion(mult = c(0, 0.12))) +
    scale_fill_brewer(palette = "Set2") +
    
    labs(
      title = Title,
      subtitle = Subtitle,
      x = "",
      y = "Number of titles",
      fill = "Content type",
      caption = "Source: Netflix titles data"
    ) +
    
    theme_bw() +
    theme(
      legend.position = "top",
      plot.title = element_text(size = 14, face = "bold"),
      plot.subtitle = element_text(size = 11),
      axis.text.x = element_text(angle = 45, hjust = 1)
    )
  
  g
}