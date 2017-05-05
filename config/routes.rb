Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'items/find', to: "items_find#show"
      get 'items/find_all', to: "items_find#index"
      resources :items, only: [:index, :show]

      get 'merchants/find', to: "merchants_find#show"
      get 'merchants/find_all', to: "merchants_find#index"
      resources :merchants, only: [:index, :show]
    end
  end
end
