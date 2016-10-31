Rails.application.routes.draw do
  root to: 'greetings#welcome'
  
  resources :characters

  resources :games
  get '/games/:id/confirm_delete' => 'games#confirm_delete', as: 'confirm_delete_game'

  resources :users, only: [:show, :edit, :update, :create]
  get '/users' => 'users#destroy', as: 'delete'
  get '/signup' => 'users#new', as: 'signup'

  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'


end
