require 'rack'

Rack::Handler::Mongrel.run(
  Proc.new { |env|
    [200,
     { "Content-Type" => "text/html" },
     [["Jazzin on procs",
       "Bliggle bloggle",
       "doop de doop",
       "i R randomz",
       "what chu sayin' sucka?!",
       "Ah pity da foo'",
       "Other 80's catch-phrases!"].sample]]},
  :Port => 9292
)
