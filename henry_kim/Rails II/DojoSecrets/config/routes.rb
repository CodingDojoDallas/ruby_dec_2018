Rails.application.routes.draw do

  get 'likes/create'
  get 'likes/destroy'
  post "/sessions" => "sessions#create"
  delete "/sessions/:id" => "sessions#destroy"
  get 'sessions/new'

  resources :users
  resources :secrets

  post "/secrets" => "secrets#create"
  post "/likes" => "likes#create"
  delete "/likes/:id" => "likes#destroy"
  get '*path' => redirect('sessions/new')

end
