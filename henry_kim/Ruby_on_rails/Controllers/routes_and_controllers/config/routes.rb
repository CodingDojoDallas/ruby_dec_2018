Rails.application.routes.draw do

  get 'hello' => "greetings#hello"
  get 'say/hello' => "greetings#saying_hello"
  get 'say/hello/joe' => "greetings#joe"
  get '/' => "greetings#say"
  get 'times' => "greetings#times"
  get 'times/restart' => "greetings#restart"
  get '*path' => redirect('/') #redirets all routes to home page
end
