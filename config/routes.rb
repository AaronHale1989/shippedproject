Rails.application.routes.draw do
 
  root "jobs#index"

  devise_for :users
  
  resources :jobs
  resources :users
  resources :boats
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
