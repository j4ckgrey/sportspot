Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  get "bookings/:id/confirmation", to: "bookings#confirmation", as: "booking_confirmation"
  # get "/own", to: 'clubs#own'

  resources :clubs do
    resources :venues, only: %i[new create]
    resources :chatrooms, only: %i[new create]
  end

  resources :venues, only: %i[index show edit destroy] do
    resources :bookings, only: %i[new create]
  end

  resources :reviews, only: %i[create]

  resources :venues do
    resources :reviews
  end

  resources :bookings, only: %i[update destroy]
  get 'search', to: 'search#index'

  resources :chatrooms, only: %i[show index destroy] do
    resources :messages, only: :create
  end
end
