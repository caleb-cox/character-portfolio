Rails.application.routes.draw do
  root to: 'greetings#welcome'
  resources :characters, except: [:index]
  resources :games
  resources :character_attributes, only:[:new, :create]
  resources :users, only: [:show, :edit, :update, :create]
  get '/users' => 'users#destroy', as: 'delete'
  get '/signup' => 'users#new', as: 'signup'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'
  post '/games/:id/delete' => 'games#destroy', as: 'delete_game'
  get '/games/:id/delete' => 'games#destroy'

end
