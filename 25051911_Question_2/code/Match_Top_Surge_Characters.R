Match_Top_Surge_Characters <- function(credits, df_names, top_n = 10, unique_names = TRUE) {
  
  library(tidyverse)
  
  # Helper function to fix invalid UTF-8 text
  clean_utf8 <- function(x) {
    x <- as.character(x)
    x <- iconv(x, from = "", to = "UTF-8", sub = "")
    x <- str_squish(x)
    x
  }
  
  # 1. Create top surge names from baby names data
  top_surge_names <-
    Yr_on_yr_Surges(df_names) %>%
    arrange(Gender, Name, desc(rank_improvement))
  
  # Optional: keep only each name's biggest surge
  if (unique_names == TRUE) {
    top_surge_names <-
      top_surge_names %>%
      distinct(Gender, Name, .keep_all = TRUE)
  }
  
  top_surge_names <-
    top_surge_names %>%
    mutate(
      Name = clean_utf8(Name),
      Name_clean = str_to_lower(Name)
    ) %>%
    group_by(Gender) %>%
    slice_max(
      order_by = rank_improvement,
      n = top_n,
      with_ties = FALSE
    ) %>%
    ungroup() %>%
    select(
      Gender,
      Name,
      Name_clean,
      surge_year = Year,
      n_prev,
      n,
      change_n,
      pct_change_n,
      rank_prev,
      rank,
      rank_improvement
    )
  
  # 2. Match these names to character names in the credits data
  matched_credits <-
    credits %>%
    
    # Clean all character columns first
    mutate(
      across(
        where(is.character),
        clean_utf8
      )
    ) %>%
    
    filter(!is.na(character)) %>%
    
    # Split characters like "Professor Marvel / Wizard of Oz"
    separate_rows(character, sep = "/|,|;") %>%
    
    mutate(
      character_clean = clean_utf8(character),
      character_first_name = str_extract(character_clean, "^[A-Za-z]+"),
      Name_clean = str_to_lower(character_first_name)
    ) %>%
    filter(!is.na(Name_clean)) %>%
    
    inner_join(top_surge_names, by = "Name_clean") %>%
    
    rename(
      actor_name = name,
      matched_baby_name = Name
    ) %>%
    
    arrange(Gender, desc(rank_improvement), matched_baby_name)
  
  matched_credits
}