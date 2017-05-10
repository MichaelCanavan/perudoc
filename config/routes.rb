Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'about/index'
  resources :questions do
    resources :answers, only: [:index, :new, :create]
  end
  resources :answers, only: [:show]

  resources :users

  resources :testimonials, only: [:index, :show, :new, :create]

  resource :about, only: [:index]


end
