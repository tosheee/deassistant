Rails.application.routes.draw do

  resources :apple_macbooks
  resources :tablets
  devise_for :users

  root 'static_pages#deassistant'

end
