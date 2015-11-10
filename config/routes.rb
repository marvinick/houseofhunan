Rails.application.routes.draw do
  root 'pages#home'

  resources :menus
end
