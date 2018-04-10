Rails.application.routes.draw do
  root to: 'pages#home'
  
  get 'pages/home' => 'pages#home'

  get 'pages/product' => 'pages#product'

  get 'pages/contact' => 'pages#contact'

  resources :classtypes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
end
