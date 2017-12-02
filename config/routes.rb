Rails.application.routes.draw do
  get '/talks' => "talks#index"

  get '/' => "users#new"
  get "/login" => "users#login_form"
  post "/login" => "users#login"
  post "/users/create" => "users#create"
  get "/users/index" => "users#index"
  post "/logout" => "users#logout"
  get "/users/:id" => "users#show"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
