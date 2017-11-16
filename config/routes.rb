Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'
  resources :spaceships do
    resources :bookings, only: [ :new, :create, :destroy ]
  end
  
  get "design"  ,to: 'pages#design'
  get "dashboard", to: "spaceships#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end