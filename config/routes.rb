Rails.application.routes.draw do  

  get "upload_photo_controller/index"

  root 'welcome#index'

  resources :gallery, only: [:index]
  resources :services, only: [:index]
  resources :about_us, only: [:index]
  resources :testimony, only: [:index]
  resources :blog, only: [:index]
  resources :contact, only: [:index]
  resources :upload_photo, only: [:index]
end
