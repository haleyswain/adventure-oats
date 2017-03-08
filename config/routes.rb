Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "home#index"

  resources :users
  resources :products
  resources :about
  resources :adventures
  resources :contact

end
