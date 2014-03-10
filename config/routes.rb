Rails.application.routes.draw do  

  root 'welcome#index'

  resources :gallery, only: [:index]
  resources :services, only: [:index]
  resources :other_services, only: [:index]
  resources :about_us, only: [:index]
  resources :testimony, only: [:index, :show]
  resources :contact, only: [:index, :create]
  resources :upload_photo, only: [:index, :new, :create, :show, :destroy], as: 'images'
end
