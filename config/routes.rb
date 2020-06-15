Rails.application.routes.draw do
  resources :kennel_owners
  resources :kennels
  resources :dens
  resources :visits
  resources :pets
  resources :users
  
  get 'users/:id/pets', to: 'users#pets', as: 'user_pets'
  

end
