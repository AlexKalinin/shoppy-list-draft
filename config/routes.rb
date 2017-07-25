Rails.application.routes.draw do
  devise_for :users

  root 'product_lists#index'
  resources :products
  resources :product_lists do
    member do
      delete 'product/:product_id' => 'product_lists#remove_product', as: :remove_product_from
      get 'product' => 'product_lists#new_product', as: :new_product_to
      post 'product' => 'product_lists#create_product', as: :add_product_to
    end
  end
  # get ''
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
