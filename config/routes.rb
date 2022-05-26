Rails.application.routes.draw do
  resources :tags, only: :index
  resources :authors, only: :index
  resources :books, only: [:index, :show]

  root 'books#index'
end
