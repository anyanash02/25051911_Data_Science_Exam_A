HBO_Names <- function(credits, titles) {
  
  library(tidyverse)
  library(stringi)
  
  hbo_character_names <-
    credits %>%
    filter(!is.na(character)) %>%
    
    # Fix invalid text encoding
    mutate(
      character = as.character(character),
      character = stringi::stri_enc_toutf8(character, validate = TRUE)
    ) %>%
    
    separate_rows(character, sep = "/|,|;") %>%
    mutate(
      Name = str_trim(character),
      Name = str_extract(Name, "^[A-Za-z]+")
    ) %>%
    filter(
      !is.na(Name),
      str_length(Name) > 2
    ) %>%
    distinct(id, Name)
  
  hbo_names <-
    hbo_character_names %>%
    inner_join(titles, by = "id") %>%
    group_by(title) %>% 
    mutate(title_no = row_number()) %>% 
    ungroup() %>% 
    filter(!is.na(release_year), release_year <= 2000, title_no <= 2) %>%
    mutate(
      popularity_rank = tmdb_popularity * (tmdb_score / 10)
    ) %>%
    select(
      Name, title, type, release_year,
      tmdb_score, tmdb_popularity, popularity_rank
    ) %>%
    arrange(desc(popularity_rank))
  
  hbo_names
}