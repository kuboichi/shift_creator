Rails.application.routes.draw do
  root "static_pages#home"
  get 'share_calendar/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'shifts/share', to: 'shifts#share', as: :share
  resources :shifts
  resources :share_calendar
end
