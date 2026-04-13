generate_custom_report <- function(script_path) {
  full_path <- paste0("data/reports/", script_path)
  source(full_path)
}

save_report <- function(name, content) {
  file <- paste0("data/reports/", name)
  writeLines(content, file)
}
