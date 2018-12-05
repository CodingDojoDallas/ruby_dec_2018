Rails.application.routes.draw do

  get 'dojos' => "dojos#index"
  get 'dojos/new' => "dojos#new"
  post 'create' => "dojos#create"
  get "dojos/:id" => "dojos#profile"
  get "dojos/:id/edit" => "dojos#edit"
  put "dojos/:id/" => "dojos#update"
  delete "dojos/:id" => "dojos#destroy"

  get "/dojos/:dojo_id/students" => "students#index"
  get "/dojos/:dojo_id/students/new" => "students#new"
  get "/dojos/:dojo_id/students/:id" => "students#show"
  post "/dojos/:dojo_id/students" => "students#create"
  get "/dojos/:dojo_id/students/:id/edit" => "students#edit"
  put "/dojos/:dojo_id/students/:id" => "students#update"
  delete "/dojos/:dojo_id/students/:id" => "students#destroy"

end
