# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'persons/profile'
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about'
  get 'contacts' => 'pages#contacts'
  resources :posts do
  	resources :comments
  end
end
