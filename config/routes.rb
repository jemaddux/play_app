Rails.application.routes.draw do
  devise_for :users

  resources :chatrooms
  resources :articles
  
  namespace :api do
    namespace :v1 do
      resources :locations, only: [:index, :show]
    end

    namespace :v2 do
      resources :locations, only: [:index, :show]
    end
  end

  root to: "chatrooms#index"
end
