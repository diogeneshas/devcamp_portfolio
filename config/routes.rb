Rails.application.routes.draw do
  resources :portfolios

  # get 'pages/about'
  get 'about', to: 'pages#about'
  # get 'pages/contact'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
