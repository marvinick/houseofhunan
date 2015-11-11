Rails.application.routes.draw do
  get 'foods/new'

  root 'pages#home'

  resources :menus do
  	resources :foods 
  end
end
