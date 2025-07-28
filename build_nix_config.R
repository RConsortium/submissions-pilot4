#https://gist.github.com/b-rodrigues/d427703e76a112847616c864551d96a1
library(rix)

rix(
  date = "2025-06-24",
  project_path = getwd(),
  r_pkgs = c(
    "openxlsx2",
    "dplyr",
    "rmarkdown",
    "knitr",
    "rix"
  ),
  system_pkgs = "quarto",
  ide = "none",
  overwrite = TRUE
)
