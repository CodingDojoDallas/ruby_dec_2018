Rails.application.routes.draw do
  get '/' => 'survey#index'
  post '/' => 'survey#create'
  get 'result/' => 'survey#result'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
