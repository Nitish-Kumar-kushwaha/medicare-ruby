Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :stores do
    member do
      delete :delete_file
    end
  end
  resources :home, only: [:index]
  resources :store, only: [:index]
  resources :admin, only: [:index, :create]
  get'/home/contact', to:"home#contact"
  get'/admin/login', to: "admin#login"
  get '/logout', to: 'admin#destroy', as: :logout
  get'/store/checkout', to:'store#checkout'
  post'/store/checkout'
  get'/store/search', to:'store#search'
  post'/store/search'
  devise_for :users
  root 'home#index'

end
