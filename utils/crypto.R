hash_password <- function(password) {
  digest::digest(password, algo="md5")
}
