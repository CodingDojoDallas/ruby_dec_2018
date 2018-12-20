Rails.application.routes.draw do
  resources :users
  resources :organizations
  post "sessions" => "sessions#create"
  delete "sessions/:id" => "sessions#destroy"

  post "organizations/:organization_id/attendance" => "attendance#create"
  delete "attendance/:id" => "attendance#destroy"
end
