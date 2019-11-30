Rails.application.routes.draw do
  resources :shopping_notes
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
  get '/outstanding_orders', to: 'customers#outstanding', as: 'outstanding'
  get '/logout', to: 'customers#logout', as: 'logout'
  get '/checkout', to: 'shopping_bags#checkout', as: 'checkout'
  get '/login', to: 'customers#login', as: 'login'
  post '/register', to: 'customers#register', as: 'register_post'
  post '/login', to: 'customers#login', as: 'login_post'
  post '/logout', to: 'customers#logout', as: 'logout_post'
  post '/checkout', to: 'shopping_bags#checkout', as: 'checkout_post'


  root to: 'products#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
