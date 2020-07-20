# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'register' }
  resources :posts do
    resources :comments, only: %i[create destroy]
  end
end
