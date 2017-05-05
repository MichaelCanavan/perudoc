Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end
  resources :answers, only: [:show]

  resources :users

  resources :testimonials, only: [:show]

end
