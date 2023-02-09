Rails.application.routes.draw do
  resources :readings, only: [:index, :create, :destroy]
  resources :outputs
  resources :components
  root "application#index"
end
