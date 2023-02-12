Rails.application.routes.draw do
  resources :readings, only: [:create, :destroy]
  resources :outputs, except: [:show]
  resources :components, except: [:show]
  root "application#index"
end
