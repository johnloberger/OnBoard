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
  


  # root 'home#show'

end
