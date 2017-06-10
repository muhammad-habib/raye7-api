# config/routes.rb
Rails.application.routes.draw do
  resources :groups
  resources :places
  resources :users
  get '/trips' => 'trips#index'
  post '/trips' => 'trips#create'
end