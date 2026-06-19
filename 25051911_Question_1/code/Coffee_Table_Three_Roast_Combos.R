Coffee_Table_Three_Roast_Combos <- function(df_clean,
                                            Countries = NULL,
                                            top_n_per_roast = Inf) {
  
  library(tidyverse)
  library(dplyr)
  
  # Optional: keep only top n coffees per roast
  if (is.finite(top_n_per_roast)) {
    df_clean <-
      df_clean %>%
      group_by(roast) %>%
      slice_max(Value_Score, n = top_n_per_roast, with_ties = FALSE) %>%
      ungroup()
  }
  
  # All possible combinations of 3 roast types
  roast_combos <- combn(sort(unique(df_clean$roast)), 3, simplify = FALSE)
  
  make_one_combo <- function(roasts) {
    
    d1 <- df_clean %>% filter(roast == roasts[1]) %>% mutate(id = row_number())
    d2 <- df_clean %>% filter(roast == roasts[2]) %>% mutate(id = row_number())
    d3 <- df_clean %>% filter(roast == roasts[3]) %>% mutate(id = row_number())
    
    grid <-
      expand_grid(
        id1 = d1$id,
        id2 = d2$id,
        id3 = d3$id
      ) %>%
      mutate(
        Avg_Cost =
          (d1$Cost_Per_100g[id1] +
             d2$Cost_Per_100g[id2] +
             d3$Cost_Per_100g[id3]) / 3,
        
        Avg_Rating =
          (d1$Rating[id1] +
             d2$Rating[id2] +
             d3$Rating[id3]) / 3,
        
        Avg_Value_Score =
          (d1$Value_Score[id1] +
             d2$Value_Score[id2] +
             d3$Value_Score[id3]) / 3
      )
    
    # Best combination for this set of 3 roasts
    best_combo <-
      grid %>%
      slice_max(Avg_Value_Score, n = 1, with_ties = FALSE)
    
    roast_labels <- dplyr::recode(
      roasts,
      `Medium` = "M",
      `Medium-Light` = "ML",
      `Dark` = "D",
      `Light` = "L",
      `Medium-Dark` = "MD",
      .default = roasts
    )
    
    # Return ONE row only
    tibble(
      Roast_Combination = paste(roast_labels, collapse = " + "),
      
      Avg_Value_Score = best_combo$Avg_Value_Score,
      
      Coffee_1 = d1$name[best_combo$id1],
      Coffee_2 = d2$name[best_combo$id2],
      Coffee_3 = d3$name[best_combo$id3]

    )
  }
  
  table_out <-
    map_df(roast_combos, make_one_combo) %>%
    mutate(
      Avg_Value_Score = round(Avg_Value_Score, 2)
    ) %>%
    arrange(desc(Avg_Value_Score)) %>% 
    rename(
      `Roast_Combo` = Roast_Combination,
      `Avg_Value` = Avg_Value_Score
    )
  
  table_out
}