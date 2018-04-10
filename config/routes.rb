Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/product'

  get 'pages/contact'

  resources :classtypes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
end
