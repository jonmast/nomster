Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  get '/page/:page', to: 'places#index'
  resources :places, except: :index do
    resources :comments, only: :create
  end
end
