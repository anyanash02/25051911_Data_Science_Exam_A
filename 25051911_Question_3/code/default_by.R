default_by <- function(df, var) {
  
  library(tidyverse)
  
  # Create summary table first
  df_summary <- df %>%
    group_by({{ var }}) %>%
    summarise(
      n = n(),
      defaults = sum(default == 1, na.rm = TRUE),
      default_rate = mean(default, na.rm = TRUE),
      .groups = "drop"
    ) 
  
  # Create plot from the summary table, not from original df
  g <- df_summary %>%
    ggplot(aes(
      x = reorder({{ var }}, default_rate),
      y = default_rate,
      fill = {{ var }}
    )) +
    geom_col(show.legend = FALSE) +
    geom_text(
      aes(
        y = default_rate / 2,
        label = scales::number(default_rate * 100, accuracy = 0.1)
      ),
      size = 3,
      fontface = "bold"
    ) +
    scale_y_continuous(labels = scales::percent) +
    theme_bw() +
    labs(
      title = paste("Default rate by", rlang::as_name(rlang::ensym(var))),
      x = rlang::as_name(rlang::ensym(var)),
      y = "Default rate"
    ) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))
  
  g
}