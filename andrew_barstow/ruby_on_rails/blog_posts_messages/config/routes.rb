Rails.application.routes.draw do
  get 'users' => "json#index"
  get 'users/new' => "dashboard#new"
  get 'users/edit/:id' => "dashboard#edit"
  post 'users/create' => 'json#create'
  get 'users/total' => 'dashboard#total'
  get 'users/:id' => "json#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end