Rails.application.routes.draw do

  resources :messages
  root 'static_pages#deassistant'

  devise_for :users

  namespace :admin do
    resources :product_categories
    resources :products
    controller 'product_attributes' do
      resources :product_attributes
      get 'product_attributes/:product/:id', action: :list
    end

  end
  resources :apple_macbooks
  resources :tablets

  controller 'product_descriptions' do
      get 'product_descriptions/:id', action: :list
  end
end
