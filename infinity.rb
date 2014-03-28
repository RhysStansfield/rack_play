require 'rack'

infinity = Proc.new { |env| [200, { "Content-Type" => "text/html" }, [env.inspect]] }

Rack::Handler::WEBrick.run infinity, :Port => 9292
