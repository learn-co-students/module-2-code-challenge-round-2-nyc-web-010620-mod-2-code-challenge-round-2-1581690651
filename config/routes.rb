Rails.application.routes.draw do
  resources :powers, only: [:index, :show]
  resources :heroines, only: [:index, :show]
  resources :heroine_power, only: [:new, :create, :show]
end
