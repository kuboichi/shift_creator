Rails.application.routes.draw do
  root "shifts#new"
  get 'static_pages/home', to: 'static_pages#home', as: :home
  get 'static_pages/help', to: 'static_pages#help', as: :help
  get 'shifts/share', to: 'shifts#share', as: :share
  get 'shifts/show/:token', to: 'shifts#show', as: :show
  get 'shifts/determined/:token', to: 'shifts#determined', as: :determined
  resources :shifts
  resources :worker_desires
end
