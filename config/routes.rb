Rails.application.routes.draw do

  resources :users do 
  resources :spaceships, only: [ :new, :create, :index ] 
  end

  resources :spaceships, only: [ :show, :edit, :update, :destroy ]

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end