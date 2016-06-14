Rails.application.routes.draw do

  resources :photographs
  resources :photo_catagories
  resources :homes
root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
