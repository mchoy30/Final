# frozen_string_literal: true

Rails.application.routes.draw do
  resources :abouts
  # get 'search/results'

  get 'search_results', to: 'search#results', as: 'search_results'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :products

  root to: 'products#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
