Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "" => "say#index"
  get "hello" => "hello#index"
  get "say/hello" => "say#hello"
  get "say/hello/joe" => "say#hello_joe"
  get "say/hello/michael" => "say#hello_michael"
  get "times" => "times#times"
  get "times/restart" => "times#restart"
end
