Rails.application.routes.draw do
  devise_for :users
  root to: 'houses#index'
  
  resources :houses, only: [:index]
  resources :abouts, only: [:index]
  resources :posts, only: [:index, :create]
  resources :inquiries, only: [:index, :new, :create]
  resources :constructions, only: [:index]
end
