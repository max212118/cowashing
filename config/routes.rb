Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :appointements, only: [:new, :create, :index]

  resources :appointements do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :machines
end
