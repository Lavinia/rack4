require "./my_middleware"

use MyMiddleware::Hello
run Proc.new{|env| [200, {"Content-Type" => "text/plain"}, ['OK!']] }

