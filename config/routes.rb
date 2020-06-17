Rails.application.routes.draw do
  get '/login' => 'sessions#new', as: 'users_login'
  get 'customer_users/:id/pets', to: 'customer_users#pets', as: 'customer_user_pets'
  get 'customer_users/:id/pets/pet', to: 'pets#show', as: 'customer_user_pet'
  get 'customer_users/:id/pets/new', to: 'pets#new', as: 'customer_user_new_pet'
  get 'customer_users/:id/visits', to: 'customer_users#visits', as: 'customer_user_visits'
  
  get 'kennel_owner_users/:id/kennels', to: 'kennel_owner_users#kennels', as: 'kennel_owner_user_kennels'
  get 'kennel_owner_users/:id/kennels/kennel', to: 'kennels#show', as: 'kennel_owner_user_kennel'
  get 'kennel_owner_users/:id/kennel/new', to: 'kennels#new', as: 'kennel_owner_user_new_kennel'

  resources :kennels
  resources :dens
  resources :visits
  resources :pets
  resources :users
  resources :customer_users
  resources :kennel_owner_users
  
  get '/', to: 'application#index'

  get '/signup', to: 'sessions#signup', as: 'signup'

  post '/login' => 'sessions#create'

  post '/logout' => 'sessions#destroy'

  post 'customer_users/:id/my_pet' => 'pets#show'
  
  
  # root 'home#show'

end
