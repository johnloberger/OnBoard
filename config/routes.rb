Rails.application.routes.draw do
  get '/login' => 'sessions#new', as: 'users_login'
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

  
  get 'customer_users/:id/pets', to: 'customer_users#pets', as: 'customer_user_pets'
  get 'users/:id/pets/new', to: 'users#new_pet', as: 'user_new_pet'
  get 'users/:id/visits', to: 'users#visits', as: 'user_visits'
  
  
  # root 'home#show'

end
