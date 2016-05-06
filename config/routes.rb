Rails.application.routes.draw do
  
  resources :clients, only: [:index, :show]
  resources :devices, only: [:index, :show]
  resources :check_ins, only: [:index, :create]
end
