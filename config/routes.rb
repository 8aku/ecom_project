Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :pages
  resources :dreamtypes
  resources :products
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  
  get '/about', to: 'pages#about', as: 'about'
  get '/contact', to: 'pages#contact', as: 'contact'

  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
