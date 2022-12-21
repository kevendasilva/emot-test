Rails.application.routes.draw do
  resources :outputs
  resources :components
  root "application#index"
end
