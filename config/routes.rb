Rails.application.routes.draw do

  devise_for :users
  resources :line_items
  resources :carts
  resources :photographs
  resources :photo_catagories
  resources :homes
  resources :charges
root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
