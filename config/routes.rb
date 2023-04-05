Rails.application.routes.draw do  
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :favorites, only: [:index, :update]
      post '/login', to: "users#login"
      get '/user-jobs', to: "users#user_jobs"
      resources :jobs, only: [:index, :create, :show, :destroy, :update]
    end
  end
end
