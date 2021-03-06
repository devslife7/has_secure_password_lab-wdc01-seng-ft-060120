Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users/homepage", to: "users#homepage"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/sessions/login", to: "sessions#login"
  post "/sessions", to: "sessions#create"
end
