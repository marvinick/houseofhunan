Rails.application.routes.draw do

  devise_for :users, :skip => :registrations

  root 'pages#home'

  resources :menus do
  	resources :foods 
  end

  #redirect no routes exception
  get '*path' => redirect('/')

end
