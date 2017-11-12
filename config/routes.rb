Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers do
    get 'alphabetized', on: :collection
    get 'missing_email', on: :collection
  end
  root 'customers#index'
end
