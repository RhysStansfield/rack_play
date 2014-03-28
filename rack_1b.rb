require 'rack'

class DoSomething
  def call(env)
    [200, { "Content-Type" => "text/html"}, ["Doing something horrah"]]
  end
end
