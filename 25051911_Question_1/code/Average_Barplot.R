Average_Barplot <- function(df,
                            Metric = "Cost_Per_100g",
                            Group = "roast") {
  
  library(tidyverse)
  
  # Restrict possible choices
  Metric <- match.arg(Metric, choices = c("Cost_Per_100g", "rating"))
  Group  <- match.arg(Group, choices = c("roast", "loc_country"))
  
  # Choose the variable to average
  metric_var <- ifelse(Metric == "Cost_Per_100g", "Cost_Per_100g", "Rating")
  
  # Nice labels
  metric_label <- ifelse(Metric == "Cost_Per_100g",
                         "Average cost per 100g",
                         "Average rating")
  
  group_label <- ifelse(Group == "roast",
                        "Roast type",
                        "Country")
  
  # Create summary data
  df_plot <-
    df %>%
    filter(!is.na(.data[[Group]]),
           !is.na(.data[[metric_var]])) %>%
    group_by(.data[[Group]]) %>%
    summarise(
      Average = mean(.data[[metric_var]], na.rm = TRUE),
      Count = n(),
      .groups = "drop"
    )
  
  df_plot <-
    df_plot %>%
    arrange(Average)
  
  # Plot
  g <-
    df_plot %>%
    ggplot(aes(x = reorder(.data[[Group]], Average),
               y = Average,
               fill = .data[[Group]])) +
    geom_col(show.legend = FALSE) +
    geom_col(fill = "#61223b") +
    theme_minimal(base_size = 12) +
    theme(
      panel.grid.major.x = element_blank(),
      panel.grid.minor = element_blank(),
      axis.text.x = element_text(angle = 45, hjust = 1)
    ) +
    geom_text(aes(y = Average / 2,
                  label = round(Average, 1)),
              colour = "white",
              fontface = "bold",
              hjust = 0.5,
              vjust = 0.5,
              size = 4.5) +
    labs(
      title = paste(metric_label, "by", group_label),
      x = group_label,
      y = metric_label
    ) +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))
  
  g
}