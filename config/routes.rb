Rails.application.routes.draw do

  # Root URL is the following
  # http://localhost:3000/signup 
  
  '********** AUTHENTICATION AND AUTHORIZATION ROUTES *****************'
  get '/login' => 'sessions#new', as: 'users_login'
  post '/login' => 'sessions#create'

  get '/signup', to: 'sessions#signup', as: 'signup'
  post '/logout' => 'sessions#destroy'

  '********** CUSTOMER USER ROUTES *****************'
  get 'customer_users/:id/pets', to: 'customer_users#pets', as: 'customer_user_pets'

  get 'customer_users/:id/pets/pet', to: 'pets#show', as: 'customer_user_pet'
  post 'customer_users/:id/my_pet' => 'pets#show'
  get 'customer_users/:id/pets/pet/delete', to: 'pets#destroy', as: 'delete_pet'

  get 'customer_users/:id/pets/new', to: 'pets#new', as: 'customer_user_new_pet'
  get 'customer_users/:id/visits', to: 'customer_users#visits', as: 'customer_user_visits'
  
  
  '********** KENNEL OWNER USER ROUTES *****************'
  get 'kennel_owner_users/:id/kennels', to: 'kennel_owner_users#kennels', as: 'kennel_owner_user_kennels'
  get 'kennel_owner_users/:id/kennels/kennel', to: 'kennels#show', as: 'kennel_owner_user_kennel'
  get 'kennel_owner_users/:id/kennel/new', to: 'kennels#new', as: 'kennel_owner_user_new_kennel'
  get 'kennel_owner_users/:id/kennel/dens', to: 'kennels#dens', as: 'kennel_dens'
  get 'kennel_owner_users/:id/kennel/delete', to: 'kennels#destroy', as: 'delete_kennel'
  get 'kennel_owner_users/:id/customers', to: 'kennel_owner_users#customers', as: 'kennel_owner_customers'

  resources :kennels
  resources :dens
  resources :visits
  resources :pets
  resources :users
  resources :customer_users
  resources :kennel_owner_users
  
end
