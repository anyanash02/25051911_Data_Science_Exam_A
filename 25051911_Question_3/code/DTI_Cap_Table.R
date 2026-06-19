DTI_Cap_Table <- function(loans_clean) {
  
  library(tidyverse)
  
  dti_caps <- seq(5, 55, by = 5)
  
  dti_cap_results <- map_df(dti_caps, function(cap) {
    
    accepted <- loans_clean %>%
      filter(dti <= cap)
    
    tibble(
      dti_cap = cap,
      borrowers_accepted = nrow(accepted),
      share_accepted = nrow(accepted) / nrow(loans_clean),
      default_rate = mean(accepted$default, na.rm = TRUE)
    )
  })
  
  dti_cap_table <- dti_cap_results %>%
    mutate(
      share_accepted = scales::percent(share_accepted, accuracy = 0.1),
      default_rate = scales::percent(default_rate, accuracy = 0.1)
    ) %>%
    kable(
      caption = "Default risk under alternative DTI hard caps",
      col.names = c(
        "DTI cap",
        "Borrowers accepted",
        "Share accepted",
        "Default rate"
      ),
      align = "c"
    ) %>%
    kable_styling(
      full_width = FALSE
    )
  dti_cap_table
}