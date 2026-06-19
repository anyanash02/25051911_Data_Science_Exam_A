Coffee_Table_By_Roast <- function(df_clean, Choice = "cheapest") {
  
  library(tidyverse)
  
  if (Choice == "cheapest") {
    
    table_out <-
      df_clean %>%
      group_by(roast) %>%
      slice_min(Cost_Per_100g, n = 1, with_ties = FALSE) %>%
      ungroup()
    
  } else if (Choice == "highest_rating") {
    
    table_out <-
      df_clean %>%
      group_by(roast) %>%
      slice_max(Rating, n = 1, with_ties = FALSE) %>%
      ungroup()
    
  } else if (Choice == "best_value") {
    
    table_out <-
      df_clean %>%
      group_by(roast) %>%
      slice_max(Value_Score, n = 1, with_ties = FALSE) %>%
      ungroup()
    
  } else if (Choice == "Africa_best_value") {
    
    table_out <-
      df_clean %>%
      filter(loc_country %in% c("Kenya", "Uganda")) %>%
      group_by(roast) %>%
      slice_max(Value_Score, n = 1, with_ties = FALSE) %>%
      ungroup()
  }
  
  table_out <-
    table_out %>%
    mutate(
      Cost_Per_100g = round(Cost_Per_100g, 2),
      Rating = round(Rating, 2),
      Value_Score = round(Value_Score, 2)
    ) %>% 
    select(
      roast,
      Cost_Per_100g,
      Rating,
      Value_Score,
      name,
      roaster
    ) %>%
    arrange(roast) %>% 
    rename(
      `Roast` = roast,
      `Cost` = Cost_Per_100g,
      `Name` = name,
      `Roaster` = roaster,
      `Value` = Value_Score
    )
  
  table_out
}