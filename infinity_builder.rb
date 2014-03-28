require 'rack'

infinity = Proc.new { |env| [200, {}, [env.inspect]] }
builder = Rack::Builder.new
builder.run infinity
Rack::Handler::Mongrel.run builder, :Port => 9292
