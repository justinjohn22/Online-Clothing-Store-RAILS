Rails.application.routes.draw do

  get 'sessions/new'

  root 'pages#home'
  get 'logon'  => 'pages#log_on'
  post 'logon' => 'pages#log_on'
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

  get 'login' => 'sessions#new'
  get 'login_page' => 'sessions#new'
  post 'login_page' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get 'bag' => 'bags#show'
  post 'clear_bag' => 'bags#clear'

  resources :order_items
  resources :products
  resources :customers

  get "/auth/twitter/callback" => "omniauth_callbacks#twitter"
end

