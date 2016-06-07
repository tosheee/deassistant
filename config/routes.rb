Rails.application.routes.draw do

  root 'static_pages#deassistant'

  devise_for :users

  namespace :admin do
    resources :product_categories
    resources :products
    resources :product_attributes
  end
  resources :apple_macbooks
  resources :tablets

  controller 'product_descriptions' do
      get 'product_descriptions/:id', action: :list
  end
end
