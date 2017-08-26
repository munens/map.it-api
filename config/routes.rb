Rails.application.routes.draw do
  resources :blogs
  resources :pins
  resources :maps
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/api' => 'application#index', defaults: { format: :json }
  post '/api/users' => 'users#create', defaults: { format: :json}

end
