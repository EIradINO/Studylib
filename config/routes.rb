Rails.application.routes.draw do
  get 'rooms/show'
  resources :tips
  resources :articles
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'pages#index'
  get 'rooms/index'
  get 'rooms/new'
  get 'pages/show'
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
