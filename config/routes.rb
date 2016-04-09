Rails.application.routes.draw do

  resources :tablets
  devise_for :users

  root 'static_pages#deassistant'

end
