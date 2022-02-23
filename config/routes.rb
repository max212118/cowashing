Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :appointements, except: [:new, :create] do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :machines do
    resources :appointements, only: [:new, :create, :index, :destroy]
  end
end
