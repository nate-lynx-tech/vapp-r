library(DBI)
con <- dbConnect(RSQLite::SQLite(), "data/app.db")

execute_query <- function(query) {
  dbGetQuery(con, query)
}
