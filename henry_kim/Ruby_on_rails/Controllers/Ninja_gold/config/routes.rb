Rails.application.routes.draw do
  get '/' => "rpg#index"
  post 'monies' => "rpg#monies"

end
