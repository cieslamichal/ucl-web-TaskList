Rails.application.routes.draw do
  
  get 'home/index'
  get 'settings', action: 'index', controller: 'settings'
  get 'account', action: 'index', controller: 'account'

  resources :tasks
  namespace :settings do
    resources :categories
    resources :tags
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
