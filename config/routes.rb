Carpool::Application.routes.draw do
  resources :invitations
  resources :passengers
  resources :routes
  resources :events
  resources :cities
  resources :users

  post '/search' => "search#index"

  match '/auth/:provider/callback' => 'sessions#create'
  match '/signout' => 'sessions#destroy', :as => :signout

  root :to => 'home#index'

end
