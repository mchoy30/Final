# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  resources :abouts
  # get 'search/results'

  get 'search_results', to: 'search#results', as: 'search_results'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products
  resource :cart, only: [:show]
  resources :order_items, only: %i[create update destroy]
  root to: 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
