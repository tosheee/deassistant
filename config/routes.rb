Rails.application.routes.draw do

  resources :macbooks
  resources :macbooks
  resources :tablets
  devise_for :users

  root 'static_pages#deassistant'

end
