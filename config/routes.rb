Rails.application.routes.draw do
  get 'subjects/exam'
  get 'subjects/english'
  get 'subjects/worldhistory'
  get 'subjects/chemistry'
  get 'subjects/math1'
  get 'subjects/math2'
  get 'subjects/physics'
  resources :containers
  resources :tips
  get 'rooms/show'
  resources :articles
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  resources :users, only: %i[show]
  root 'pages#index'
  get 'rooms/index'
  get 'rooms/new'
  get 'pages/about'
  get 'pages/arlikes'
  get 'pages/tiplikes'
  get 'pages/liketips'
  get 'pages/artimeline'
  get 'pages/timeline'
  resources :rooms
  post 'arlike/:id' => 'arlikes#create', as: 'create_arlike'
  delete 'arlike/:id' => 'arlikes#destroy', as: 'destroy_arlike'
  post 'tiplike/:id' => 'tiplikes#create', as: 'create_tiplike'
  delete 'tiplike/:id' => 'tiplikes#destroy', as: 'destroy_tiplike'
  post 'liketip/:id' => 'liketips#create', as: 'create_liketip'
  delete 'liketip/:id' => 'liketips#destroy', as: 'destroy_liketip'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
