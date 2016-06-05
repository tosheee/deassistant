Rails.application.routes.draw do

  resources :product_descriptions
  resources :product_descriptions
  namespace :admin do
    resources :products
  end
  namespace :admin do
    resources :product_categories
  end
  resources :apple_macbooks
  resources :tablets do
    collection do
      get 'search'
    end
  end
  devise_for :users

  root 'static_pages#deassistant'

  resources :normalizations

end
