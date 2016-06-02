Rails.application.routes.draw do
  resources :contacts
  resource :users
  # get '/' => 'contacts#index'
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  # #
  # get '/login' => 'user#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'

    root to: 'contacts#index'
    get '/' => 'contacts#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'

    post '/contacts' => 'contacts#create'

    get '/signup' => 'users#new'
    post '/users' => 'users#create'
    get '/teams' =>'teams#team'

end
