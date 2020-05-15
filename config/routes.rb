Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root 'events#index'

  resources :users, only: [:index, :edit, :update]
  resources :events
  resources :reports, only: [:index, :new, :create, :show] do
    resources :messages, only: [:index, :create]
  end
end
