Countries_Long <- function(df) {
  
  library(tidyverse)
  
  df_countries_long <-
    df %>%
    mutate(
      row_id = row_number(),   # keeps track of original observation/title
      
      production_countries_clean = production_countries %>%
        str_remove_all("\\[|\\]|'|\"") %>%   # remove [, ], ', "
        str_squish()
    ) %>%
    separate_rows(production_countries_clean, sep = ",\\s*") %>%
    rename(country = production_countries_clean) %>%
    filter(!is.na(country),
           country != "")
  
  df_countries_long
  
}