local typedefs = require "kong.db.schema.typedefs"

return {
    name = "kong-forward-auth",
    fields = {
        { consumer = typedefs.no_consumer },
        { config = {
            type = "record",
            fields = {
                { timeout = { default = 10000, type = "number" }, },
                { keepalive_timeout = { default = 60000, type = "number" }, },
                { auth_uri = { required = true, type = "string" }, },
                { origin_request_headers_to_forward_to_auth = { type = "array", default = {} }, },
                { auth_response_headers_to_forward = { type = "array", default = {} }, },
        }, }, },
    },
}