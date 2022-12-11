Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/profile", to: "pages#profile"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show]
  get "/add_friend", to: "friendships#add_friend"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :events do
    resources :invitations, only: [:create, :update]
  end
  resources :friendships, only: [ :new, :create ]
end
