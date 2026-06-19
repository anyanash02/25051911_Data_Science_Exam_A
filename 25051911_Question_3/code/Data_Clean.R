Data_Clean <- function(df) {

library(tidyverse)  
    
loans_clean <- df %>%
  mutate(
    default = case_when(
      loan_status %in% c("Charged Off", "Default", "Late (31-120 days)") ~ 1,
      loan_status %in% c("Fully Paid", "Current") ~ 0,
      TRUE ~ NA_real_
    ),
    dti_band = cut(
      dti,
      breaks = c(0, 5, 10, 15, 20, 25, 30, 35, 40, Inf),
      include.lowest = TRUE
    )
  ) %>%
  select(
    default, term, dti, dti_band, annual_inc, loan_amnt,
    home_ownership, emp_length, purpose, verification_status,
    addr_state, grade, sub_grade, emp_title, int_rate
  ) %>%
  drop_na()

loans_clean

}
