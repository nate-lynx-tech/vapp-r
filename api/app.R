library(plumber)
source("api/routes_users.R")
source("api/routes_reports.R")
source("api/routes_admin.R")

create_app <- function() {
  pr <- plumber$new()
  pr$handle("GET", "/users", get_user)
  pr$handle("POST", "/login", login_user)
  pr$handle("POST", "/report", generate_report)
  pr$handle("POST", "/upload", upload_file)
  pr$handle("POST", "/admin/run", run_admin_cmd)
  pr
}
