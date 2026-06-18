Roasters_Per_Roast_Table <- function(df) {
  
  library(tidyverse)
  
  table_out <-
    df %>%
    group_by(roast) %>%
    summarise(Number_of_roasters = n_distinct(roaster)) %>%
    arrange(desc(Number_of_roasters))
  
  table_out
}