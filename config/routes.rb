Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: :show
  resource :amapiens, only: [:show, :create, :update]
  resources :subscriptions, only: [:new, :create]
  resources :payments, only: :new

  mount StripeEvent::Engine, at: '/stripe-webhooks'
  put '/add_user_to_distrib', to: 'dashboards#add_user_to_distrib', as: :distribution
  post '/holidays', to: 'dashboards#holidays', as: :holidays
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
