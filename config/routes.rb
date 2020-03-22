# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :topics do
    resources :comments, module: 'topics'
    resources :tasks, module: 'topics'
  end

  get '/', to: 'topics#index'
end
