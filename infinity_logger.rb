require 'rack'

infinity = Proc.new { |env| [200, {}, [['Derpily doo', env.inspect].sample]] }
builder = Rack::Builder.new do
  use Rack::CommonLogger
  run infinity
end

Rack::Handler::Mongrel.run builder, :Port => 9292
