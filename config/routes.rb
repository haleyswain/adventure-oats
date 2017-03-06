Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "home#index"

  resources :users do
  end
  resources :products do
  end
  resources :about do
  end 
end
