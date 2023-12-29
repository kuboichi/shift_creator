Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :shifts
  # Defines the root path route ("/")
  root "static_pages#home"
end
