Rails.application.routes.draw do
  namespace :admin do
    resources :users
    resources :services
    resources :service_types
    resources :skills
    root to: "users#index"
  end
  
  devise_for :users, controllers: { registration: "registrations" }

  root 'welcome#index'

  resources :premiums
  resources :services 
  resources :service_types
  resources :conversations do
    resources :messages
  end
end
