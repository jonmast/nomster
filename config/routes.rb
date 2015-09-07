Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  get '/page/:page', to: 'places#index'
  resources :places, only: [:new, :create, :show, :edit, :update]
end
