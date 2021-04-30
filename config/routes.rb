Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  root 'store#index', as: 'store_index'

  resources :products do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get :who_bought, on: :member
  end
end
