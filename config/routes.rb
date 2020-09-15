Rails.application.routes.draw do
  root to: 'items#index'

  resources :houses, only: :index
end
