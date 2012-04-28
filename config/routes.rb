Carpool::Application.routes.draw do
  resources :invitations

  resources :passengers

  resources :routes

  resources :events

  resources :cities

  resources :users

end
