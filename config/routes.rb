Rails.application.routes.draw do
  resource :users
  resources :contacts
  
  # get '/' => 'contacts#index'
  # get '/signup' => 'users#new'
  # post '/users' => 'users#create'
  # #
  # get '/login' => 'user#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'

    # root to: 'contacts#index'
    # get '/' => 'contacts#index'
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
    #
    # post '/contacts' => 'contacts#create'
    #
    # get '/signup' => 'users#new'
    # post '/users' => 'users#create'
    # get '/teams' =>'teams#team'
    # patch '/contacts/update' => 'contacts#update'
    # get "/contacts" => "contacts#index"
    # get "/contacts/all" => "contacts#all"
    # get "/contacts/:id" => "contacts#show"
    # get "/contacts/new" => "contacts#new"
    # post "/contacts" => "contacts#create"  # usually a submitted form
    # get "/contacts/:id/edit" => "contacts#edit"
    # put "/contacts/:id" => "contacts#update" # usually a submitted form
    # delete "/contacts/:id" => "contacts#destroy"
end
