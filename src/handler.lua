local access = require "kong.plugins.kong-forward-auth.access"


local KongForwardAuthHandler = {
  VERSION = "0.1.0",
  PRIORITY = 1400,
}


function KongForwardAuthHandler:access(conf)
  access.execute(conf)
end


return KongForwardAuthHandler