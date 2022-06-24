Rails.application.routes.draw do
  resources :authors, only: [:index, :show]
  resources :books, only: [:index, :show]
  resources :request_books, only: [:new, :create], path: "request-books"
  resources :tags, only: :index
  resources :users, except: [:index, :destroy]

  root 'welcome#index'
end
