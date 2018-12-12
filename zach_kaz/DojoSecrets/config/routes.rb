Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/update'

  get 'likes/destroy'

  get 'secrets/new'

  get 'secrets/create'

  get 'secrets/edit'

  get 'secrets/update'

  get 'secrets/destroy'

  get 'secrets/index'

  get 'users/new'

  get 'users/:id/secrets' => 'secrets#useronly', as: 'users_secrets'
  post 'users/:id/secrets' => 'secrets#create'
  delete 'users/:id/secrets' => 'secrets#destroy'
  delete 'secrets/index' => 'secrets#destroy'
  post 'secrets/likes/create' => 'likes#create'
  delete 'secrets/likes/destroy' => 'likes#destroy'
  
  
  get 'users/:id' =>'users#show', as:'users_index'

  get 'users/:id/edit' =>'users#edit', as:'users_edit'

  patch 'users/:id/edit' =>'users#update'

  delete 'users/:id/edit' =>'users#destroy'

  get 'login' => 'sessions#new'

  get 'logout' => 'sessions#destroy'

  post 'users/new' => 'users#create'

  delete 'login' => 'sessions#destroy'
  
  post 'login' => 'sessions#create'

  root 'sessions#create'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
