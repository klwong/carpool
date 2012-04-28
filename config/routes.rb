Carpool::Application.routes.draw do

  post '/events/join' => "events#join"
  post '/search' => "search#index"
  
  resources :invitations
  resources :passengers
  resources :routes
  resources :events
  resources :cities
  resources :users

  match '/auth/:provider/callback' => 'sessions#create'
  match '/signout' => 'sessions#destroy', :as => :signout

  root :to => 'home#index'

end
