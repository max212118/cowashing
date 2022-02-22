Rails.application.routes.draw do
  get 'machines/index'
  get 'machines/show'
  get 'machines/new'
  get 'machines/create'
  get 'machines/edit'
  get 'machines/destroy'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
