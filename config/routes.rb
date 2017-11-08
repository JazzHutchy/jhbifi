Rails.application.routes.draw do
  resources :profile_photos
  resources :listing_photos
  resources :favourites
  resources :reviews
  resources :listings
  resources :profiles
  devise_for :users
  resources :conversations do
    resources :messages
  end
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
