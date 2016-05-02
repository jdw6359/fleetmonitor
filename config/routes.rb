Rails.application.routes.draw do
  
  resources :clients, only: [:index, :show]
  resources :devices, only: [:index, :show]

  post 'client/:id/device/:device_id/metrics' => 'metrics#create'
end
