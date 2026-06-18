Cost_Rating_Scatter <- function(df, Title, Subtitle) {
  
  library(tidyverse)
  
  g <-
    df %>%
    filter(!is.na(Cost_Per_100g),
           !is.na(Rating),
           !is.na(roast)) %>%
    ggplot() +
    geom_point(
      aes(x = Cost_Per_100g,
          y = Rating,
          color = roast),
      size = 2,
      alpha = 0.7
    ) +
    theme_bw() +
    scale_color_brewer(palette = "Dark2") +
    labs(
      title = Title,
      subtitle = Subtitle,
      x = "Cost per 100g",
      y = "Rating",
      color = "Roast category"
    ) +
    theme(
      legend.position = "top",
      legend.title = element_blank(),
      plot.title = element_text(size = 14),
      plot.subtitle = element_text(size = 12)
    )
  
  g
}