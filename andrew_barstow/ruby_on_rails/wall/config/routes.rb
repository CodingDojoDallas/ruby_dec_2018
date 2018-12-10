Rails.application.routes.draw do
  get 'messages' => 'messages#index'
  post 'messages' => 'messages#create'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
