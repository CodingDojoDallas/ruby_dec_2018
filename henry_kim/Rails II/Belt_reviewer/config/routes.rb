Rails.application.routes.draw do

  resources :users
  resources :events
  resources :comments
  post "sessions" => "sessions#create"
  delete "sessions/:id" => "sessions#destroy"
  post "events/:event_id/attendance" => "attendance#create"
  delete "attendance/:id" => "attendance#destroy"
  get '*path' => redirect('/events')
end
