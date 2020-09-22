Rails.application.routes.draw do
  root to: 'houses#index'
  
  resources :abouts, only: [:index]
  resources :posts, only: [:index, :create]
end
