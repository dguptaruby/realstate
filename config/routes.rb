Rails.application.routes.draw do
  resources :commercial_units
  resources :complex_buildings
  resources :houses
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
