Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'
  get 'shifts/share', to: 'shifts#share', as: :share
  resources :shifts
end
