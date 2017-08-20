Rails.application.routes.draw do
  resources :app_requests, :only => [:index]

  namespace :api do
    resources :app_requests, :only => [:create]
  end
end
