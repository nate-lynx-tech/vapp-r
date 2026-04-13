source("api/app.R")
options(error = function() traceback())
pr <- create_app()
pr$run(host = "0.0.0.0", port = 8000)
