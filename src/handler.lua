local access = require "kong.plugins.kong-forward-auth.access"
local kong_meta = require "kong.meta"


local KongForwardAuthHandler = {
  VERSION = kong_meta.version,
  PRIORITY = 1400,
}


function KongForwardAuthHandler:access(conf)
  access.execute(conf)
end


return KongForwardAuthHandler