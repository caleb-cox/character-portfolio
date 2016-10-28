Rails.application.routes.draw do
  
  resources :characters, except: [:index]
  resources :games
  resources :character_attributes, only:[:new, :create]
  get '/signup' => 'users#new', as: 'signup'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'

end
