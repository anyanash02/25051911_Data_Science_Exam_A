# ============================================================
# Setup: Data Science practical exam project
# ============================================================

library(tidyverse)
library(Texevier)

# Replace with your actual student number
student_number <- "911"

# Choose where the whole exam project should live
base_dir <- "C:/Users/anyan/OneDrive/Desktop/Data Science_Random Notes"

# Root exam project folder
exam_dir <- file.path(base_dir, student_number)

# Create the main project folder
dir.create(exam_dir, recursive = TRUE, showWarnings = FALSE)

# Create one valid RStudio project file for the whole exam
writeLines(
  c(
    "Version: 1.0",
    "",
    "RestoreWorkspace: Default",
    "SaveWorkspace: Default",
    "AlwaysSaveHistory: Default",
    "",
    "EnableCodeIndexing: Yes",
    "UseSpacesForTab: Yes",
    "NumSpacesForTab: 2",
    "Encoding: UTF-8",
    "",
    "RnwWeave: Sweave",
    "LaTeX: pdfLaTeX"
  ),
  file.path(exam_dir, paste0(student_number, ".Rproj"))
)

# Main folders
dir.create(file.path(exam_dir, "data"), showWarnings = FALSE)
dir.create(file.path(exam_dir, "code"), showWarnings = FALSE)

# Git ignore: data should not be committed
writeLines(
  c(
    "data/",
    "*.Rhistory",
    "*.RData",
    ".Rproj.user/"
  ),
  file.path(exam_dir, ".gitignore")
)

# Create a blank main README file
file.create(file.path(exam_dir, "README.rmd"))

# ============================================================
# Question-specific Texevier templates
# ============================================================

# Create a blank main README file
file.create(file.path(exam_dir, "README.rmd"))

# Remove old extra question folders, if they exist
old_question_folders <- file.path(
  exam_dir,
  c("q1_happiness", "q2_wine", "q3_movies", "q4_tennis")
)

unlink(old_question_folders, recursive = TRUE, force = TRUE)

# ============================================================
# Question-specific Texevier templates
# ============================================================

questions <- tibble::tribble(
  ~short_name,
  "Question_1",
  "Question_2",
  "Question_3",
  "Question_4",
)

purrr::walk(
  questions$short_name,
  function(short_name) {
    
    template_name_clean <- paste(student_number, short_name, sep = "_")
    
    Texevier::create_template(
      directory     = exam_dir,
      template_name = template_name_clean,
      build_project = FALSE,
      open_project  = FALSE
    )
  }
)