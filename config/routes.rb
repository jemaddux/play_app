Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations, only: [:index, :show]
    end

    namespace :v2 do
      resources :locations, only: [:index, :show]
    end
  end

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
