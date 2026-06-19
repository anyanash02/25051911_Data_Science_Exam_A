Top_Surges_Table <- function(df, top_n = 10) {
  
  library(tidyverse)
  library(knitr)
  
  top_surges <-
    df %>%
    
    # Keep only the biggest surge per name
    arrange(Gender, Name, desc(rank_improvement)) %>%
    distinct(Gender, Name, .keep_all = TRUE) %>%
    
    # Top names per gender
    group_by(Gender) %>%
    slice_max(
      order_by = rank_improvement,
      n = top_n,
      with_ties = FALSE
    ) %>%
    ungroup() %>%
    arrange(Gender, desc(rank_improvement)) %>%
    
    mutate(
      pct_change_n = round(pct_change_n, 1)
    ) %>%
    
    rename(
      `Year` = Year,
      `Gender` = Gender,
      `Name` = Name,
      `Previous count` = n_prev,
      `Current count` = n,
      `Change in count` = change_n,
      `% change in count` = pct_change_n,
      `Previous rank` = rank_prev,
      `Current rank` = rank,
      `Rank improvement` = rank_improvement
    )
  
  knitr::kable(
    top_surges,
    caption = paste0("Top ", top_n, " year-on-year name surges by gender"),
    align = "l"
  )
}