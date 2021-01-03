Rails.application.routes.draw do
  resources :containers
  resources :tips
  resources :artips
  get 'rooms/show'
  resources :articles
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  resources :users, :only => [:index]
  resources :users, only: %i[show]
  root 'pages#index'
  get 'rooms/index'
  get 'rooms/new'
  get 'pages/show'
  get 'pages/about'
  get 'pages/arlikes'
  get 'pages/tiplikes'
  get 'pages/liketips'
  get 'pages/artimeline'
  resources :rooms
  post 'arlike/:id' => 'arlikes#create', as: 'create_arlike'
  delete 'arlike/:id' => 'arlikes#destroy', as: 'destroy_arlike'
  post 'tiplike/:id' => 'tiplikes#create', as: 'create_tiplike'
  delete 'tiplike/:id' => 'tiplikes#destroy', as: 'destroy_tiplike'
  post 'liketip/:id' => 'liketips#create', as: 'create_liketip'
  delete 'liketip/:id' => 'liketips#destroy', as: 'destroy_liketip'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
