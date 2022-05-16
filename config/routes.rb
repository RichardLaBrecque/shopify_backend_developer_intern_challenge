Rails.application.routes.draw do
  get '/items/new', to: 'items#new'
  post '/items/new', to: 'items#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
