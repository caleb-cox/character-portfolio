Rails.application.routes.draw do
  resources :characters, except: [:index]
  resources :games
  resources :character_attributes, only:[:new, :create]
  get '/login' => 'sessions#new', as: 'login'
  post '/sessions' => 'sessions#create'

end
