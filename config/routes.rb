Rails.application.routes.draw do
  resources :artips
  resources :notes
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
  get 'pages/articles'
  get 'pages/tips'
  resources :rooms
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
