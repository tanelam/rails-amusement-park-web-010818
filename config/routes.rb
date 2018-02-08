Rails.application.routes.draw do
  resources :users
  resources :attractions
  root 'welcomes#index'
  resources :welcomes
  resources :sessions
  get "/signin", to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
end
