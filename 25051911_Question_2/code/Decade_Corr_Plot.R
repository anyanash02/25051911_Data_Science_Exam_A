Decade_Corr_Plot <- function(df, gender_choice) {
  
  g <- df %>%
    filter(Gender == gender_choice) %>%
    mutate(
      lead_decades = paste0(lead_decades, " decade lead"),
      Decade = as.numeric(Decade)
    ) %>%
    ggplot(aes(x = Decade, y = spearman_corr, colour = lead_decades)) +
    geom_line(linewidth = 1) +
    geom_point(size = 2) +
    theme_bw() +
    labs(
      title = "Stability of Popular Name Rankings Across Decades",
      subtitle = "Spearman rank correlation of top names with future decades",
      x = "Decade",
      y = "Spearman rank correlation",
      colour = "Comparison"
    ) +
    scale_x_continuous(breaks = unique(decade_corr$Decade)) +
    theme(
      legend.position = "top",
      plot.title = element_text(size = 14),
      plot.subtitle = element_text(size = 11)
    )
  
  g
  
}