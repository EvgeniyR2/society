Rails.application.routes.draw do
  devise_for :users

  resources :topics

  get '/', to: 'topics#index'
end
