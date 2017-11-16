Rails.application.routes.draw do

  get    "dashboard", to: "spaceships#dashboard"

  resources :spaceships

  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount Attachinary::Engine => "/attachinary"

  root to: 'pages#home'

  get "/design"  ,to: 'pages#design'

  post "/search", to: 'spaceships#search', as: 'spaceships_search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
