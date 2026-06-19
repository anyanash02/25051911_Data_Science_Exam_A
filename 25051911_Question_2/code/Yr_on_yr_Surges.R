Yr_on_yr_Surges <- function(df) {
  
  name_surges <-
    df %>%
    group_by(Year, Gender) %>%
    arrange(desc(n), Name, .by_group = TRUE) %>%
    mutate(rank = row_number()) %>%
    ungroup() %>%
    
    group_by(Gender, Name) %>%
    arrange(Year, .by_group = TRUE) %>%
    mutate(
      n_prev = lag(n),
      rank_prev = lag(rank),
      
      change_n = n - n_prev,
      pct_change_n = ((n - n_prev) / n_prev)*100,
      
      # positive value = moved up in popularity
      rank_improvement = ((rank_prev - rank) / rank)*100
    ) %>%
    ungroup() %>% 
    filter(!is.na(rank_improvement), n_prev >= 100) %>% 
    arrange(desc(rank_improvement)) %>%
    select(Year, Gender, Name, n_prev, n, change_n, pct_change_n, rank_prev, rank, rank_improvement)
  
  name_surges
  
}
  