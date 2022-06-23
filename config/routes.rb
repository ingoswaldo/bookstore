Rails.application.routes.draw do
  resources :authors, only: :index
  resources :books, only: [:index, :show] do
    resources :comments, only: :index
  end
  resources :request_books, only: [:new, :create], path: "request-books"
  resources :tags, only: :index
  resources :users, except: [:index, :destroy]

  root 'welcome#index'
end
