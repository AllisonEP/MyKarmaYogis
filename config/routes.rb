Rails.application.routes.draw do
  resources :departments
  resources :teams
  resources :volunteers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end