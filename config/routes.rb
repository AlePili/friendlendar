Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index]
  # Defines the root path route ("/")
  # root "articles#index"
  resources :events, only: [:index, :new, :create]
  resources :friendships, only: [:new, :create]

end
