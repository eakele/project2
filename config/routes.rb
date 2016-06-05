Rails.application.routes.draw do
    resource :users
    resources :contacts
    root to: 'contacts#index'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    post '/logout' => 'sessions#destroy'
    get '/contacts/home' => 'contacts#home'
    get '/contacts/show' => 'contacts#show',:as => 'another_show' 
end
