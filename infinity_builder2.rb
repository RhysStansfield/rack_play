require 'rack'

infinity = Proc.new { |env| [200, {}, [env.inspect]] }
builder = Rack::Builder.new do
  run infinity
end
Rack::Handler::Mongrel.run builder, :Port => 9292
