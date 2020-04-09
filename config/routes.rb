Rails.application.routes.draw do
  get 'helps/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  resources :users

  get 'show', to: 'users#show', as: 'show'
  put 'update', to: 'users#update', as: 'update'
end
