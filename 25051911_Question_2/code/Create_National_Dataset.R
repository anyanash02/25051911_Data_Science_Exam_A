Create_National_Dataset <- function(df) {
  
  # collapsing dataset so names not separated by state
  library(tidyverse)
  
  baby_names_national <-
    df %>%
    group_by(Year, Gender, Name) %>%
    summarise(
      n = sum(Count, na.rm = TRUE),
      .groups = "drop"
    )
  baby_names_national
}