Rails.application.routes.draw do
  resources :authors, only: :index
  resources :books, only: [:index, :show] do
    resources :comments, only: :index
  end
  resources :tags, only: :index
  resources :users, except: [:index, :destroy]

  root 'welcome#index'
end
