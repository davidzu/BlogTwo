Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :reviews
  
  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end
  
  get 'about', to: 'pages#about'
  root to: 'pages#home'
end
