Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/dogs" => "dogs#create"
  patch "/dogs/:id" => "dogs#update"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
