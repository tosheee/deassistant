Rails.application.routes.draw do

  resources :apple_macbooks
  resources :tablets do
    collection do
      get 'search'
    end
  end
  devise_for :users

  root 'static_pages#deassistant'

end
