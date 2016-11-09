local lapis = require("lapis")
local Model = require("lapis.db.model").Model
local app = lapis.Application()

local Tasks = Model:extend("task")

-- app:get("/", function()
--   return "Welcome to Lapis2 " .. require("lapis.version")
-- end)

app:get("/hello", function()
  return { json = { name = "kikou"}}
end)

app:get("/", function(self)
  self.tasks = Tasks:select()
  return { json = self.tasks }
end)

return app
