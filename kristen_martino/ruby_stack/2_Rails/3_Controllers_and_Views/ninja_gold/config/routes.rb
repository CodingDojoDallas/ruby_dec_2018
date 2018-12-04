Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "" => "rpg#index"
  post "/farm" => "rpg#farm"
  post "/casino" => "rpg#casino"
  post "/cave" => "rpg#cave"
  post "/house" => "rpg#house"


end
