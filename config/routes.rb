Rails.application.routes.draw do
  root to: 'home#index'
  resources :users
  resources :subreddits
  resources :posts
  resources :comments
  resources :users, only: [:show, :new, :create]
end


