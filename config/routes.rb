Rails.application.routes.draw do
  resources :profile_photos
  resources :listing_photos
  resources :favourites
  resources :reviews
  resources :messages
  resources :conversations
  resources :listings
  resources :profiles
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
