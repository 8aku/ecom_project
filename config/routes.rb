Rails.application.routes.draw do
  resources :customers
  resources :orders
  resources :shopping_items
  resources :shopping_bags
  resources :pages
  resources :dreamtypes
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'
  get '/register', to: 'customers#register', as: 'register'
  get '/login', to: 'customers#login', as: 'login'


  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
