Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  get '/page/:page', to: 'places#index'
  resources :places, except: :index do
    resources :comments, only: :create
    resources :photos, only: :create
  end
  resources :users, only: :show
end
