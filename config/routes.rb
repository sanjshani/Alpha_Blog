Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  # post 'users', to: 'users#create'    <-- asigning'users#create' route by itself!!
  # "resources" below ==> assign every route for "users" except for "users#new"..
  # ..which is specificllay assigned for "signup" to 'user#new" route'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
