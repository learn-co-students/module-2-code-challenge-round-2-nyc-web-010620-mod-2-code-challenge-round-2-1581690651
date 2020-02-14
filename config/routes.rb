Rails.application.routes.draw do
  resources :powers, only: [:index]
  resources :heroines, only: [:index] 
  get '/heroines/:id', to: 'heroines#show', as: 'heroine'
  get '/power/:id', to: 'powers#show', as: 'power'
  get '/heroine/new', to: 'heroines#edit'
  post '/heroine', to: 'heroines#create'
end