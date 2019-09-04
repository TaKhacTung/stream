Rails.application.routes.draw do
  root "static_pages#home"
  get "/single", to: "static_pages#single"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :sessions, only: %i(new create)
  resources :users
end
