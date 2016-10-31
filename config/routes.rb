Rails.application.routes.draw do
  root to: 'greetings#hello'
  resources :characters, except: [:index]
  resources :games
  resources :users, only: [:show, :create]

  get '/signup' => 'users#new', as: 'signup'
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'

end
