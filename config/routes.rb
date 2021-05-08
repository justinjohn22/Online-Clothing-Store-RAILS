Rails.application.routes.draw do
  root 'pages#home'
  get 'products/index'
  get 'products/new'
  get 'products/edit'
end

