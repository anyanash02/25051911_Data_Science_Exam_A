Rank_Corr_Graph <- function(df, gender_choice) {
  
  g <- df %>%
    filter(Gender == gender_choice) %>%
    mutate(lead_years = paste0("Lead ", lead_years)) %>%
    ggplot(aes(x = Year,
               y = spearman_corr,
               colour = lead_years,
               group = lead_years)) +
    geom_line(linewidth = 1) +
    geom_point(size = 1.5) +
    facet_wrap(~ Gender) +
    theme_bw() +
    labs(
      title = paste("Persistence of Popular Names:", gender_choice),
      subtitle = "Spearman rank correlation between each year's top 25 names and the next 1–3 years",
      x = "Year",
      y = "Spearman rank correlation",
      colour = "Comparison"
    ) +
    theme(
      legend.position = "top",
      legend.title = element_blank()
    )
  
  g
  
}