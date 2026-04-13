log_info <- function(msg) {
  cat(Sys.time(), msg, "\n", file="logs/app.log", append=TRUE)
}
