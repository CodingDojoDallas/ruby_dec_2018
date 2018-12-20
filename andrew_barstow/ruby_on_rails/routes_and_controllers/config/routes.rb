Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "" => "sergeants#index"
  get "times" => "sergeants#times"
  get "times/restart" => "sergeants#times_restart"
  get "hello" => "sergeants#hello"
  get "say/hello" => "sergeants#say_hello"
  get "say/hello/micheal" => "sergeants#uneeded_greeting"
  get "say/hello/:name" => "sergeants#greeting"
end
