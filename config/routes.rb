Rails.application.routes.draw do
  root 'places#index'
  get '/page/:page', to: 'places#index'
end
