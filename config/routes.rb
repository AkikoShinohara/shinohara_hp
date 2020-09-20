Rails.application.routes.draw do
  get 'informations/show'
  root to: 'houses#index'

  resources :houses, only: :index
  resources :informations, only: :show
end
