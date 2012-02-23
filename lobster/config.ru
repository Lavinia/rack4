require "rack/lobster"

use MyMiddleware::Hello
run Rack::Lobster.new