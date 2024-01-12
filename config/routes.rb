Rails.application.routes.draw do
  root "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/help'
  get 'shifts/share', to: 'shifts#share', as: :share
  get 'shifts/show/:token', to: 'shifts#show', as: :show
  get 'shifts/determined/:token', to: 'shifts#determined', as: :determined
  resources :shifts
  resources :worker_desires
end
