Rails.application.routes.draw do

  namespace :admin do
    resources :feature_brand_attributes
  end
  namespace :admin do
    resources :feature_brand_attributes
  end
  namespace :admin do
    resources :features_brands
  end
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
      get 'product_descriptions/:id/:brand/:id', action: :show
      get 'product_descriptions/:product_id/:name_brand/:brand_id/new', action: :new
  end
end
