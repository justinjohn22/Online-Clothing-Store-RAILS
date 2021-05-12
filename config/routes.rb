Rails.application.routes.draw do
  resources :users, only: [:show,:index,:new,:create]
  root 'pages#home'

  #Collection re-directed pages
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/women'
  get 'products/men'
  get 'products/kids'
  get 'products/newins'

  get 'saved_lists/:id' => "saved_lists#show", as: "saved_list"
  delete 'saved_lists/:id' => "saved_lists#destroy"

  post 'saved_items' => "saved_items#create"

  resources :products
end

