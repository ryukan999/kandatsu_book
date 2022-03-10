Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :books
  get 'books/status'
  
  resources :search_status
  resources :rentals, only: [:create, :update]
  resource :isbn
  resource :state_to_ordered
  resource :takeout
  resources :searches
  resources :now_order
  resources :users, only: [:index]
 
 root 'books#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
