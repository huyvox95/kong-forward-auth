package = "kong-forward-auth"

version = "0.1.0"

supported_platforms = {"linux", "macosx"}

source = {
  url = "git://github.com/huyvox95/kong-forward-auth",
  tag = "master"
}

description = {
  summary = "A Kong plugin that make GET auth request before proxying the original.",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.kong-forward-auth.access"] = "src/access.lua",
    ["kong.plugins.kong-forward-auth.handler"] = "src/handler.lua",
    ["kong.plugins.kong-forward-auth.schema"] = "src/schema.lua"
  }
}