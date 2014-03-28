require 'rack'

class DoSomething
  def call(env)
    [200, { "Content-Type" => "text/html"}, ["Doing something horrah"]]
  end
end

Rack::Handler::WEBrick.run(DoSomething.new, port: 9292)

# Notes - rack middleware can be anything that responds to a #call() method -
#         note this also applies to procs - will make a seperate file doing that
#         in a mo - the call method should return an array of 3 items - the first
#         an integer - the response code - the second a hash of the environment
#         and lastly an array or similar collection that can respond to #each()
