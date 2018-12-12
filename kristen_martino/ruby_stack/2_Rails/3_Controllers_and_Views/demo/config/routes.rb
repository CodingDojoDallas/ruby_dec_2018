Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # this line will create 7 routes as shown below:
  resources :products
  # get "products" => "products#index"
  # get "products/new" => "products#new"
  # post "products" => "products#create"
  # get "products/:id" => "products#show"
  # get "products/:id/edit" => "products#edit"
  # patch "products/:id" => "products#update"
  # delete "products/:id" => "products#destroy"

  # '/profile' will take the request to the users controller show method.
  get "profile" => "users#show"
end
