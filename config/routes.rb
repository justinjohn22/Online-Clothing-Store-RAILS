Rails.application.routes.draw do

  get 'sessions/new'

  root 'pages#home'
  get 'logon'  => 'pages#log_on'
  post 'logon' => 'pages#log_on'
  
  post 'redirection' => 'ratings#redirect'

  #Collection re-directed pages
  get 'products/index' => 'products#index', as: 'all'
  get 'products/new'
  get 'products/edit'
  get 'products/women'
  get 'products/men'
  get 'products/kids'
  get 'products/newins'
  get 'products/details' => 'products#details', as: 'details'
  
  post 'filtering' => 'filters#new'
  get 'filtering' => 'filters#new'

  get 'saved_lists/:id' => 'saved_lists#show', as: 'saved_list'
  delete 'saved_lists/:id' => 'saved_lists#destroy'

  post 'saved_items' => 'saved_items#create'
  post 'saved_items_random' => 'saved_items#create_random'

  post 'customers/:id/toggle_subscription' => 'customers#toggle_subscription', as: 'subscription' 

  post 'users' => 'pages#create_user'

  post 'signup' => 'customers#new'
  get 'signup' => 'customers#new'

  get '/search' => 'pages#search', :as => 'search_page'

  get 'customers/:id' => 'customers#show', as: 'logged_account'
  
  # post 'customers/:id/edit' => 'customers#edit', as: 'update_account'
  get 'customers/:id/edit' => 'customers#edit', as: 'update_account'

  get 'login' => 'sessions#new'
  get 'login_page' => 'sessions#new'
  post 'login_page' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  delete 'filterout' => 'sessions#destroy_filter'

  get 'rating' => 'ratings#new'

  get 'bag' => 'bags#show'
  post 'bag' => 'bags#show' 
  post 'clear_bag' => 'bags#clear'

  resources :order_items
  resources :products
  resources :customers
  resources :filters

  post "/auth/twitter/callback" => "omniauth_callbacks#twitter"
end

