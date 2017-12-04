Rails.application.routes.draw do
  post 'message/create' => "message#create"

  get '/talks' => "talks#index"
  get '/talks/:id' => "talks#show"
  post "/talks/create" => "talks#create"

  get '/' => "users#new"
  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/users/create" => "users#create"
  get "/users/index" => "users#index"
  post "/logout" => "users#logout"
  get "/users/:id" => "users#show"



  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
