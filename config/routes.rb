Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/dashboard", to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :clubs do
    resources :venues, only: %i[new create]
  end
  resources :venues, only: %i[index show edit destroy] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[update destroy]
  get 'search', to: 'search#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
