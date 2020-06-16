Rails.application.routes.draw do
  resources :kennel_owners
  resources :kennels
  resources :dens
  resources :visits
  resources :pets
  resources :users
  
  get '/', to: 'application#index'
  get '/login' => 'sessions#new'

  post '/login' => 'sessions#create'

  post '/logout' => 'sessions#destroy'

  
  get 'users/:id/pets', to: 'users#pets', as: 'user_pets'
  get 'users/:id/pets/new', to: 'users#new_pet', as: 'user_new_pet'
  get 'users/:id/visits', to: 'users#visits', as: 'user_visits'
  
  
  # root 'home#show'

end
