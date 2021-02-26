Rails.application.routes.draw do
  root 'sessions#home'


  get '/signup' => 'volunteers#new'
  post '/signup' => 'volunteers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  get '/projects' => 'projects#create'
  post '/projects' => 'projects#index'
  



  resources :projects do
    resources :teams, only: [:new, :create, :index]
  end
  resources :departments
  resources :teams
  resources :volunteers do
    resources :projects, only: [:new, :create, :index]
  end
  
end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#nested routes project_teams GET    
#/projects/:project_id/teams                                                            teams#index
 #/projects/:project_id/teams                                                             teams#create
#/projects/:project_id/teams/new        