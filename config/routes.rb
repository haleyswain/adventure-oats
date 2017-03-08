Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root "home#index"

  resources :users
  resources :products do
    resources :reviews
  end

  resources :about
  resources :adventures
  resources :contact

end
