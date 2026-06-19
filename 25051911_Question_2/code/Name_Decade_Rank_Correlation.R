Name_Decade_Rank_Correlation <- function(df, top_n_names = 25, max_lead_decades = 3) {
  
  library(tidyverse)
  
  # Create decade variable and count total name use within each decade
  decade_names <-
    df %>%
    mutate(Decade = floor(Year / 10) * 10) %>%
    group_by(Decade, Gender, Name) %>%
    summarise(n_decade = sum(n, na.rm = TRUE), .groups = "drop")
  
  # Rank names within each decade and gender
  top_names <-
    decade_names %>%
    group_by(Decade, Gender) %>%
    arrange(desc(n_decade), Name, .by_group = TRUE) %>%
    slice_head(n = top_n_names) %>%
    mutate(rank_now = row_number()) %>%
    ungroup() %>%
    select(Decade, Gender, Name, rank_now)
  
  max_decade <- max(top_names$Decade, na.rm = TRUE)
  
  # Compare each decade with future decades
  rank_corr <-
    top_names %>%
    crossing(lead_decades = 1:max_lead_decades) %>%
    mutate(future_decade = Decade + lead_decades * 10) %>%
    filter(future_decade <= max_decade) %>%
    
    left_join(
      top_names %>%
        rename(
          future_decade = Decade,
          rank_future = rank_now
        ),
      by = c("future_decade", "Gender", "Name")
    ) %>%
    
    # If the name is not in the future top list, give it rank top_n + 1
    mutate(rank_future = ifelse(is.na(rank_future), top_n_names + 1, rank_future)) %>%
    
    group_by(Decade, Gender, lead_decades) %>%
    summarise(
      spearman_corr = cor(rank_now, rank_future, method = "spearman"),
      .groups = "drop"
    )
  
  rank_corr
}