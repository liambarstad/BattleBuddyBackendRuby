Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 
      resources :alarms, only: [:index, :create, :update, :destroy]
      resources :itinerary_items, only: [:index, :create, :update, :destroy]
      resources :locations, only: [:index, :create, :update, :destroy]
    end
  end
end
