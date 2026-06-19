Merge_Credits_Titles <- function(credits, titles, actors_only = TRUE) {
  
  library(tidyverse)
  
  credits_clean <-
    credits %>%
    mutate(id = as.character(id))
  
  if (actors_only == TRUE) {
    credits_clean <-
      credits_clean %>%
      filter(role == "ACTOR")
  }
  
  titles_clean <-
    titles %>%
    mutate(id = as.character(id)) %>%
    select(
      id,
      title,
      type,
      release_year,
      tmdb_popularity,
      tmdb_score
    ) %>%
    distinct(id, .keep_all = TRUE)
  
  credits_clean %>%
    left_join(titles_clean, by = "id")
}