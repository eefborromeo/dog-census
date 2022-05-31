Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'dogs#index'
  
  get '/dogs', to: 'dogs#index', as: 'dogs'
  get '/dogs/new', to: 'dogs#new'
  get '/dogs/:id/edit', to: 'dogs#edit', as: 'edit_dogs'
  get '/dogs/:id', to: 'dogs#show', as: 'dog'
  post '/dogs', to: 'dogs#create'
  patch '/dogs/:id', to: 'dogs#update'
  delete '/dogs/:id', to: 'dogs#destroy' 
  
end
