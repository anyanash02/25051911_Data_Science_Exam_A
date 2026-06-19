Model_Table <- function(model) {
  
  library(kableExtra)
  library(broom)
  
  model_table <- 
    model %>%
    tidy() %>%
    mutate(
      term = recode(term,
                    "(Intercept)" = "Constant"),
      term = str_replace(term, "factor\\(grade\\)", "Grade "),
      estimate = round(estimate, 3),
      std.error = round(std.error, 3),
      statistic = round(statistic, 3),
      p.value = round(p.value, 3)
    ) %>%
    kable(
      caption = "Regression of default rate on loan grade",
      col.names = c("Variable", "Estimate", "Std. Error", "t-statistic", "p-value")
    ) %>%
    kable_styling(full_width = FALSE)
  
  model_table
}