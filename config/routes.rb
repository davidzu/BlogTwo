Rails.application.routes.draw do
  devise_for :users
  resources :reviews
  
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  
  get 'about', to: 'pages#about'
  root to: 'pages#home'
end
