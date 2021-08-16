# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  resources :members
  resources :events

  get 'pages/about', to: 'pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
