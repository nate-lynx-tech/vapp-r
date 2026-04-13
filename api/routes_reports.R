source("services/report_service.R")

generate_report <- function(req, res) {
  body <- jsonlite::fromJSON(req$postBody)
  expr <- paste0("summary(", body$dataset, ")")
  eval(parse(text = expr))
}
