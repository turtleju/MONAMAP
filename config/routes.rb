Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: :show

  resources :subscriptions, only: [:new, :create] 
  resources :payments, only: :new
  
  

  # resources :orders, only: [:show, :create] do
  # end
  
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
