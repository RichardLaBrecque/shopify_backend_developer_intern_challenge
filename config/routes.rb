Rails.application.routes.draw do
  resources :items
  resources :wearhouses
  post '/items/new', to: 'items#create'
  post '/wearhouses/new', to: 'wearhouses#create'
  # get '/items/new', to: 'items#new'
  # post '/items/new', to: 'items#create'
  # get '/items', to: 'items#index'
  # get '/items/:id/edit', to: 'items#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
