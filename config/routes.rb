Rails.application.routes.draw do

  devise_for :users
  root to: "pages#home"

  resources :users
  resources :children, only: [:index, :create, :new, :edit, :update, :destroy]
  resources :profile_researches
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
  resources :flats, only: [:new, :create, :edit, :update, :show, :destroy]
  resources :perks, only: [:index]

end
