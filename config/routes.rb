# config/routes.rb
Rails.application.routes.draw do
  resources :groups
  resources :places
  resources :users
  get '/trips' => 'trips#index'
  get '/trips/:id' => 'trips#show'
  post '/trips' => 'trips#create'
  post '/trips/:id/join' => 'trips#join'
  post '/trips/:id/leave' => 'trips#leave'
  delete '/trips/:id' => 'trips#destroy'
end