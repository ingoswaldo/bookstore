Rails.application.routes.draw do
  resources :authors, only: :index
  resources :books, only: [:index, :show]
  resources :tags, only: :index
  resources :users, except: [:index, :destroy]

  root 'books#index'
end
