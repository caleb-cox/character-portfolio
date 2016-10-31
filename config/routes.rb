Rails.application.routes.draw do
  root to: 'greetings#hello'
  resources :characters, except: [:index]
  resources :games
  resources :character_attributes, only:[:new, :create]
  resources :users, only: [:show]
  get '/signup' => 'users#new', as: 'signup'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'
  post '/games/:id/delete' => 'games#destroy', as: 'delete_game'
  get '/games/:id/delete' => 'games#destroy'

end
