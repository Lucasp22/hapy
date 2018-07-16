Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :boxes

  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' # perform a log out


  get '/box' => 'boxes#new'




end
