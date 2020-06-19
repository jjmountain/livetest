Rails.application.routes.draw do
  root to: 'courses#index'

  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :courses, only: [ :index, :show ] do
    resources :tests, only: [ :new, :create ]
  end
  resources :tests, only: [ :show, :index, :update, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
