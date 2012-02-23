rack_time = Proc.new {|env| [200, { "Content-Type" => "text/plain"}, ["Hello, the time is #{Time.now}"]] }
builder = Rack::Builder.new do
  run rack_time
end
Rack::Handler::Thin.run builder