Rails.application.routes.draw do
  get 'signup' => 'users#new'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'
  delete 'users/:id' => 'users#destroy'
  get 'users/:id/edit/'  =>  'users#edit'
  patch 'users/:id' => 'users#update'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
