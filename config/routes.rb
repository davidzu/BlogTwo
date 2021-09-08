Rails.application.routes.draw do
  resources :reviews
  resources :blogs
  
  get 'about', to: 'pages#about'
  root to: 'pages#home'
end
