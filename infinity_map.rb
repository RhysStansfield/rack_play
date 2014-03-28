require 'rack'

infinity = Proc.new { |env| [200, { "Content-Type" => "text/html" }, [env.inspect]] }
builder = Rack::Builder.new do
  use Rack::CommonLogger
  map '/' do
    run infinity
  end

  map '/version' do
    map '/' do
      run Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["infinity 0.1"]] }
    end

    map '/last' do
      run Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["infinity 0.2beta"]] }
    end
  end
end

Rack::Handler::Mongrel.run builder, :Port => 9292
