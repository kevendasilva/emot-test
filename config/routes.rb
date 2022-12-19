Rails.application.routes.draw do
  resources :components
  root "application#index"
end
