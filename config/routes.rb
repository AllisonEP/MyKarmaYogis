Rails.application.routes.draw do
  resources :departments
  resources :teams
  resources :volunteers
  resources :projects
  #may delete
  get '/signup' => 'volunteers#new'
 #post '/signup' => 'volunteers#create'

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
