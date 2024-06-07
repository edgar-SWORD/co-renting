Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"
  get "form", to: "pages#form"

  resources :users
  resources :children, only: [:index, :create, :new, :edit, :update, :destroy]
  resources :profile_researches
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
  resources :flats, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :perks, only: [:new, :create]

  namespace :user_intake do
    resources :personal_informations, only: %i[new create]
    resources :user_shifts, only: %i[new create]
    resources :user_budgets, only: %i[new create]
    resources :user_personalities, only: %i[new create]
  end

  namespace :flat_intake do
    resources :rooms_furnished, only: %i[new create]
    resources :flat_styles, only: %i[new create]
  end

end
