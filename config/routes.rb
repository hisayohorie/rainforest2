Rails.application.routes.draw do
  get 'reviews/show'

  get 'reviews/create'

  get 'reviews/destroy'

  resources :products do
    resources :reviews, only: [:show,:create,:destroy]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
