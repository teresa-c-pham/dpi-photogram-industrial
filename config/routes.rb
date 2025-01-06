Rails.application.routes.draw do
  resources :comments
  resources :photos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "photos#index"

  # Define path routes for User
  get "/:username" => "photos#user", as: :specific_user
  # get "/:username/feed" => "photos#feed", as: :user_feed
end
