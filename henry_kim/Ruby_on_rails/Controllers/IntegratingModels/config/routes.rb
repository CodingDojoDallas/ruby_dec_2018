Rails.application.routes.draw do

  get 'users' => "users#index"
  get 'users/total' => "users#totalUser"
  get 'users/new'=> "users#new"
  post 'users/create' => "users#createUser"
  get 'users/:id' => "users#profile"
  get 'users/:id/edit' => "users#edit"
  post 'update/:id' => "users#update"

end
