Rails.application.routes.draw do

  resources :jobs
  devise_for :users
  root "jobs#index"
  resources :users
  resources :boats
  resources :schedules
  post "assign" => "schedules#assign"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
