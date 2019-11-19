Rails.application.routes.draw do
  get 'dashboard/show'
  devise_for :users

  resource :dashboard, only: :show

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
