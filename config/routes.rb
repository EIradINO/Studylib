Rails.application.routes.draw do
  resources :artips
  get 'rooms/show'
  resources :articles
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  root 'pages#index'
  get 'rooms/index'
  get 'rooms/new'
  get 'pages/show'
  resources :users, only: [:show]
  get 'pages/articles'
  resources :rooms
  post 'arlike/:id' => 'arlikes#create', as: 'create_arlike'
  delete 'arlike/:id' => 'arlikes#destroy', as: 'destroy_arlike'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
