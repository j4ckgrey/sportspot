Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"

  resources :clubs do
    resources :venues, only: %i[new create]
  end

  resources :venues, only: %i[index show edit destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :venues do
    resources :reviews
  end

  resources :bookings, only: %i[update destroy]
  get 'search', to: 'search#index'
end
