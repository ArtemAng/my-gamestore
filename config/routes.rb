Rails.application.routes.draw do
  resources :permitions
  resources :roles
  resources :games
  resources :categories
  resources :game_studios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
