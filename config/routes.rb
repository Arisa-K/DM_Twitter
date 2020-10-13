Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  root to: "tweets#index"
  resources :tweets do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy, :index]
  end
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
