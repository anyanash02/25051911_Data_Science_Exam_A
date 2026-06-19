Cost_Rating_Scatter <- function(df, Title, Subtitle) {
  
  library(tidyverse)
  
  # Stellenbosch-inspired colours
  su_roast_cols <- c(
    "Light"        = "#CAA258",  # gold
    "Medium-Light" = "#82CCAE",  # green
    "Medium"       = "#DC4405",  # orange
    "Medium-Dark"  = "#A60A3D",  # wine red
    "Dark"         = "#61223B"   # maroon
  )
  
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
    scale_color_manual(values = su_roast_cols) +
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