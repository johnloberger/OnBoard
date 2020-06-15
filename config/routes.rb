Rails.application.routes.draw do
  resources :kennel_owners
  resources :kennels
  resources :dens
  resources :visits
  resources :pets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
