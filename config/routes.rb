Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  root 'welcome#index'

  resources :gallery, only: [:index]
  resources :services, only: [:index]
  resources :other_services, only: [:index]
  resources :about_us, only: [:index]
  resources :testimony, only: [:index, :show]
  resources :contact, only: [:index, :create]
  resources :upload_photo, only: [:index, :new, :create, :show, :destroy], as: 'images'
  resources :events, only: [:index, :new, :create]
  resources :vendors, only: [:index, :new, :create]
  resources :testimonials, only: [:index, :new, :create]
end
