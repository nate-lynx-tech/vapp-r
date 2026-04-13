source("services/auth_service.R")
source("services/db_service.R")

get_user <- function(req, res) {
  username <- req$args$username
  query <- paste0("SELECT * FROM users WHERE username = '", username, "'")
  execute_query(query)
}

login_user <- function(req, res) {
  body <- jsonlite::fromJSON(req$postBody)
  auth_user(body$username, body$password)
}
