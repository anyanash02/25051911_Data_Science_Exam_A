Coffee_Table_Three_Roast_Combos_Same_Country <- function(df_clean,
                                                        Countries = NULL,
                                                        top_n_per_roast = Inf) {
  
  library(tidyverse)
  
  # Optional: keep only top n coffees per country-roast group
  if (is.finite(top_n_per_roast)) {
    df_clean <-
      df_clean %>%
      group_by(loc_country, roast) %>%
      slice_max(Value_Score, n = top_n_per_roast, with_ties = FALSE) %>%
      ungroup()
  }
  
  make_country_combos <- function(country_df) {
    
    country_name <- unique(country_df$loc_country)
    roast_types <- sort(unique(country_df$roast))
    
    # If a country has fewer than 3 roast types, skip it
    if (length(roast_types) < 3) {
      return(tibble())
    }
    
    roast_combos <- combn(roast_types, 3, simplify = FALSE)
    
    make_one_combo <- function(roasts) {
      
      d1 <- country_df %>% filter(roast == roasts[1]) %>% mutate(id = row_number())
      d2 <- country_df %>% filter(roast == roasts[2]) %>% mutate(id = row_number())
      d3 <- country_df %>% filter(roast == roasts[3]) %>% mutate(id = row_number())
      
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
      
      tibble(
        Roast_Combination = paste(roast_labels, collapse = " + "),
        loc_country = country_name,
        Avg_Cost = best_combo$Avg_Cost,
        Avg_Rating = best_combo$Avg_Rating,
        Avg_Value_Score = best_combo$Avg_Value_Score,
        
        Coffee_1 = d1$name[best_combo$id1],
        Coffee_2 = d2$name[best_combo$id2],
        Coffee_3 = d3$name[best_combo$id3]
      )
    }
    
    map_df(roast_combos, make_one_combo)
  }
  
  all_country_combos <-
    df_clean %>%
    group_split(loc_country) %>%
    map_df(make_country_combos)
  
  table_out <-
    all_country_combos %>%
    group_by(Roast_Combination) %>%
    arrange(desc(Avg_Value_Score), Avg_Cost) %>%
    slice(1) %>%
    ungroup() %>%
    mutate(
      Avg_Cost = round(Avg_Cost, 2),
      Avg_Rating = round(Avg_Rating, 2),
      Avg_Value_Score = round(Avg_Value_Score, 2)
    ) %>%
    arrange(desc(Avg_Value_Score)) %>% 
    rename(
      `Roast_Combo` = Roast_Combination,
      `Avg_Value` = Avg_Value_Score,
      `Country` = loc_country
    )
  
  table_out
}