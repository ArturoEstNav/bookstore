Rails.application.routes.draw do
  get 'carts/show'
  get 'books/new'
  get 'books/edit'
  get 'books/show'
  get 'books/index'
  get 'home', to: 'pages#home'
  get 'about', to: 'pages#about'
  devise_for :customers
  devise_for :merchants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :customers, only: [:edit, :update, :show]
  resources :books, only: [:new, :create, :edit, :update, :show, :index]
  resources :merchants, only: [:edit, :update, :show]
  resources :carts, only: [:show]
end
