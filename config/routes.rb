Rails.application.routes.draw do
  get 'contact_infos/index'
  devise_for :users
  
  resources :products, only: [:index]

  resources :contact_infos

  root controller: :products, action: :index
end
