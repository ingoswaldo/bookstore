Rails.application.routes.draw do
  resources :authors, only: :index
  resources :books, only: [:index, :show]

  root 'books#index'
end
