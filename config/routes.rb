Rails.application.routes.draw do
  get 'sessions/new'
  resources :posts
  resources :users
  resources :sessions
  
  get '/', to: 'posts#index'
  get 'users/:id/details' , to: 'users#details'
  get 'authors', to: 'users#index'
  get 'authors/:id', to: 'users#show'
  get 'authors/:id/details', to: 'users#details'
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
 
end