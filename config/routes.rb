Rails.application.routes.draw do
  get 'books/new'
  get 'books/edit'
  get 'books/show'
  get 'books/index'
  devise_for :merchants
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'home', to: 'pages#home'
  root to: 'pages#home'

  resources :customers, only: [:edit, :update, :show]
  resources :books, only: [:new, :create, :edit, :update, :show, :index]
  resources :merchants, only: [:edit, :update, :show]
  resources :carts, only: [:show]
end
