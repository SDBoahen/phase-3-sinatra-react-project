require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
# mounts our main controller so our server can respond to requests that match routes defined inside of it
run ApplicationController

# Additional Custom Controllers
# any additional controlers we want to use in our application must be added with the `use` method. If we forget to do this, then routes defined inside any other Controller - it won't be accessible in our local web server.
use UserController
