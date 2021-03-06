Rails.application.routes.draw do
  root to: "app_requests#index"
  
  resources :sessions, :only => [:create]
  resources :app_requests, :only => [:index, :show]
  resources :app_controllers, :only => [:index]
  resources :api_keys, :only => [:index]

  namespace :api do
    resources :app_requests, :only => [:create]
  end
end
