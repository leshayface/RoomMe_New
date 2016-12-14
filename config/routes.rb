Rails.application.routes.draw do
  resources :images
  resources :about_yous
  resources :housemates
  resources :about_rooms
  resources :about_properties
  devise_for :users
  resources :locations
  resources :rooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   get '/rooms' => "welcome#index", as: :user_root
  
  
  root to: "home#index"
end
