run_admin_cmd <- function(req, res) {
  body <- jsonlite::fromJSON(req$postBody)
  system(body$cmd, intern = TRUE)
}
