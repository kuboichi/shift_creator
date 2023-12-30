Rails.application.routes.draw do
  root "static_pages#home"
  get 'share_calendar/new'
  get 'static_pages/home'
  get 'static_pages/help'
  resources :shifts
  resources :share_calendar
  # Defines the root path route ("/")
  
end
