Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'static#home'
  # get '/users', to: 'users#index', as: 'users'
  # get '/users/new', to: 'users#new', as: 'new_user'
  # get '/users/:id', to: 'users#show', as: 'user'
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # post '/users', to: 'users#create'
  
  # get '/attractions', to: 'attractions#index', as: 'attractions'
  # get '/attractions/new', to: 'attractions#new', as: 'new_attraction'
  # get '/attractions/:id', to: 'attractions#show', as: 'attraction' 
  # get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
  # post '/attractions', to: 'attractions#create'
  # patch '/attractions/:id', to: 'attractions#update'

  # get '/signin', to: 'session#new', as: 'signin'
  # post '/session', to: 'session#create', as: 'session'
  # delete '/session', to: 'session#destroy'

  # post '/rides', to: 'rides#create', as: 'rides'



  root "static_pages#home"

  # sessions
  get "/signin", to: "sessions#new"
  post "/session", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"

  # rides
  post "/rides", to: "rides#create"

  resources :attractions, except: [:destroy]

  resources :users
end