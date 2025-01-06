Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :produkts do
    member do
      get 'purchase'
    end
  end
  resources :orders, only: [:create, :index]
  resources :produkts
end
