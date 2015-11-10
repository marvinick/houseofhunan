Rails.application.routes.draw do
  root 'pages#home'

  resources :menus, only: [:index, :show] 

end
