Rails.application.routes.draw do

  root "jobs#index"

  devise_for :users, :controllers => { registrations: 'registrations' }
  
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :jobs
  resources :users
  resources :boats
  resources :schedules
  post "assign" => "schedules#assign"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
