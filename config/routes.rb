Rails.application.routes.draw do
  resources :housemates
  resources :about_rooms
  resources :about_properties
  devise_for :users
  resources :locations
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"
end
