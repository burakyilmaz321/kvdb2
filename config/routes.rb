Rails.application.routes.draw do
  root 'videos#index'
  resources :videos, only: [:index, :show]
  resources :actors, only: [:show]
end
