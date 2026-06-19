Name_Rank_Correlation <- function(df, top_n_names = 25, max_lead = 3) {
  
  library(tidyverse)
  
  # create top 25 ranked names per year and sex
  top_names <-
    df %>%
    group_by(Year, Gender) %>%
    arrange(desc(n), Name, .by_group = TRUE) %>%
    slice_head(n = top_n_names) %>%
    mutate(rank_now = row_number()) %>%
    ungroup() %>%
    select(Year, Gender, Name, rank_now)
  
  max_year <- max(top_names$Year, na.rm = TRUE)
  
  # compare each year with the next 1, 2 and 3 years
  rank_corr <-
    top_names %>%
    crossing(lead_years = 1:max_lead) %>%
    mutate(future_year = Year + lead_years) %>%
    
    # remove comparisons where the future year does not exist
    filter(future_year <= max_year) %>%
    
    # join onto future year's top 25 list
    left_join(
      top_names %>%
        rename(
          future_year = Year,
          rank_future = rank_now
        ),
      by = c("future_year", "Gender", "Name")
    ) %>%
    
    # if a name is not in the future top 25, give it rank 26
    mutate(rank_future = ifelse(is.na(rank_future), top_n_names + 1, rank_future)) %>%
    group_by(Year, Gender, lead_years) %>%
    summarise(
      spearman_corr = cor(rank_now, rank_future, method = "spearman"),
      .groups = "drop"
    )
}