Rails.application.routes.draw do
  devise_for :users
  get 'foods/new'

  root 'pages#home'

  resources :menus do
  	resources :foods 
  end
end
