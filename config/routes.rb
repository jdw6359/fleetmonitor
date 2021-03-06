Rails.application.routes.draw do
  namespace :api do
    resources :clients, only: [:index, :show]
    resources :devices, only: [:index, :show]
    resources :check_ins, only: [:index, :create]
    resources :downtime_segments, only: [:index, :create]
  end
end
