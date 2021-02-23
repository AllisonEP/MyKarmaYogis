Rails.application.routes.draw do
  root 'sessions#home'


  get '/signup' => 'volunteers#new'
  post '/signup' => 'volunteers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sesions#create'

  delete '/logout' => 'sessions#destroy'




  resources :departments
  resources :teams
  resources :volunteers
  resources :projects
  #may delete
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
