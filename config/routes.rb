Rails.application.routes.draw do
  
  namespace :admin do
  	root 'application#index'
  end

  devise_for :users
  get 'foods/new'

  root 'pages#home'

  resources :menus do
  	resources :foods 
  end
end
