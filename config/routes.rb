Rails.application.routes.draw do


  get '/signup' => 'volunteers#new'
  post '/signup' => 'volunteers#create'



  resources :departments
  resources :teams
  resources :volunteers
  resources :projects
  #may delete
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
