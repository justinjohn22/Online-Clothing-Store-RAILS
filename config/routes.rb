Rails.application.routes.draw do

  root 'pages#home'

  #Collection re-directed pages
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/women'
  get 'products/men'
  get 'products/kids'
  get 'products/newins'
  get 'products/details' => 'products#details', as: 'details'

  get 'saved_lists/:id' => 'saved_lists#show', as: 'saved_list'
  delete 'saved_lists/:id' => 'saved_lists#destroy'

  post 'saved_items' => 'saved_items#create'
  post 'saved_items_random' => 'saved_items#create_random'

  post 'users' => 'pages#create_user'

  post 'signup' => 'customers#new'
  get 'signup' => 'customers#new'

  resources :products
  resources :customers
end

