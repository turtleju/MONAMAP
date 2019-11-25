Rails.application.routes.draw do
  devise_for :users

  resource :dashboard, only: :show

  put '/add_user_to_distrib', to: 'dashboards#add_user_to_distrib', as: :distribution

  resources :subscriptions, only: [:new, :create]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
