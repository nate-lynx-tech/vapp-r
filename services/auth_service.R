users <- read.csv("data/users.csv")

auth_user <- function(username, password) {
  user <- users[users$username == username, ]
  if (nrow(user) == 0) return(FALSE)
  if (user$password == password) return(TRUE)
  FALSE
}
