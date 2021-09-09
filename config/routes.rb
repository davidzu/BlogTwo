Rails.application.routes.draw do
  resources :reviews
  resources :blogs do
  	member do
  		post :toggle_status
  	end
  end
  
  get 'about', to: 'pages#about'
  root to: 'pages#home'
end
