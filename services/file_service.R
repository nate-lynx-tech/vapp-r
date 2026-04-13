upload_file <- function(req, res) {
  file <- req$files$file
  path <- paste0("data/uploads/", file$name)
  file.copy(file$datapath, path)
  list(status="uploaded")
}
