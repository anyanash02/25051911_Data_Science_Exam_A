Roasts_From_Location <- function(df, Title, Subtitle,
                                 xaxis_size = 8,
                                 xaxis_rows = 1) {
  
  library(tidyverse)
  
  # This removes the ugly summarise warning...
  options(dplyr.summarise.inform = FALSE)
  
  dfp <-
    df %>%
    group_by(loc_country, roast) %>%
    summarise(Count = n()) %>%
    ungroup()
  
  # Arrange roasters from smallest total number of roasts to largest
  order1 <-
    dfp %>%
    group_by(loc_country) %>%
    summarise(Total = sum(Count)) %>%
    arrange(Total) %>%
    pull(loc_country)
  
  g <-
    dfp %>%
    plot_orderset(., Column = "loc_country", Order = order1) %>%
    ggplot() +
    geom_bar(
      aes(x = loc_country, y = Count, fill = roast),
      stat = "identity",
      position = "stack"
    ) +
    theme_bw() +
    scale_fill_brewer(palette = "Dark2") +
    scale_x_discrete(guide = guide_axis(n.dodge = xaxis_rows)) +
    labs(
      title = Title,
      subtitle = Subtitle,
      x = "",
      y = "Number of roasts",
      fill = "Roast category"
    ) +
    theme(
      legend.position = "top",
      plot.title = element_text(size = 14),
      plot.subtitle = element_text(size = 12),
      axis.text.x = element_text(size = xaxis_size, angle = 90, vjust = 0.5, hjust = 1)
    )
  
  g
}