Data_Loading <- function(Datroot, encoding = "UTF-8"){
  
  library(tidyverse)
  
  # quietly read csv file
  silentread <- function(x){
    hushread <- purrr::quietly(readr::read_csv)
    df <- hushread(
      x,
      locale = readr::locale(encoding = encoding),
      show_col_types = FALSE
    )
    df$result
  }
  
  # read data
  df <- silentread(Datroot)
  
  # clean characters
  df_coffee <-
    df %>%
    mutate(across(
      where(is.character),
      ~ iconv(.x, from = encoding, to = "UTF-8", sub = "")
    ))
  
  # only keeping non-missing values for important variables
  df_clean <- df_coffee %>% 
      filter(!is.na(roast),
           !is.na(Cost_Per_100g),
           !is.na(Rating)) %>%
      mutate(Value_Score = Rating / Cost_Per_100g)
  
  df_clean
  
}