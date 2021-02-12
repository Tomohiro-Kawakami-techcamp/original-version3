Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  resources :tasks do
    resources :appoints, only: [:index, :create]
  end
  resources :users, only: [:show]
  resources :admins, only: [:index]
  resources :allappoints, only: [:index]
end