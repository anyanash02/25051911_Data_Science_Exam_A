Risk_Profiles_df <- function(loans_clean) {
  
  library(tidyverse)
  library(knitr)
  
  risk_profiles <- loans_clean %>%
    group_by(grade, dti_band, purpose, home_ownership) %>%
    summarise(
      n = n(),
      default_rate = mean(default, na.rm = TRUE),
      median_income = median(annual_inc, na.rm = TRUE),
      .groups = "drop"
    ) %>%
    filter(n >= 100) %>%
    arrange(desc(default_rate)) %>%
    slice_max(default_rate, n = 10)
  
  
  risk_profiles_table <- risk_profiles %>%
    slice_max(default_rate, n = 10) %>%
    mutate(
      default_rate = scales::percent(default_rate, accuracy = 0.1),
      median_income = scales::dollar(median_income, accuracy = 1)
    ) %>%
    kable(
      caption = "Top 10 borrower profiles with the highest default rates",
      col.names = c(
        "Grade",
        "DTI band",
        "Loan purpose",
        "Home ownership",
        "Number of borrowers",
        "Default rate",
        "Median annual income"
      ),
      align = "c"
    )
  risk_profiles_table
  
}