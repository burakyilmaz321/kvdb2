Rails.application.routes.draw do
  get 'videos/index'

  get 'videos/show'

  root 'home#index'
  get 'home/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
