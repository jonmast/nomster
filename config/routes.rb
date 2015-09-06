Rails.application.routes.draw do
  root 'places#index'
  get '/page/:page', to: 'places#index'
  resources :places, only: [:new, :create]
end
