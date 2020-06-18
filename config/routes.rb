Rails.application.routes.draw do
  root to: 'courses#index'

  resources :courses, only: [ :index, :show ] do
    resources :tests, only: [ :new, :create ]
  end
  resources :tests, only: [ :show, :index, :update, :edit]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
