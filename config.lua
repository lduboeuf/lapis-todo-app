local config = require("lapis.config")
-- config.lua
config("development", {
  mysql = {
    host = "127.0.0.1",
    user = "xxx",
    password = "xxx",
    database = "tasks"
  }
})

config("production", {
  port = 8000,
  num_workers = 2,
  code_cache = "on",
  mysql = {
    host = "127.0.0.1",
    user = "xxx",
    password = "xxx",
    database = "tasks"
  }
})
