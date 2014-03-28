infinity = Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["DERRRRP"]] }

use Rack::CommonLogger

map '/' do
  run infinity
end

map '/version' do
  map '/' do
    run Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["in yo verzshunz"]] }
  end

  map '/last' do
    run Proc.new { |env| [200, { "Content-Type" => "text/html" }, ["messin wit yo betaz"]] }
  end
end
