Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :produkts do
    member do
      get 'purchase'
    end
  end
  resources :orders do
    member do
      patch :discard
      patch :change_to_sent
      patch :change_to_delivered
    end
  end
  resources :produkts
end
