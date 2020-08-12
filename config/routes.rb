Rails.application.routes.draw do
  #devise_for :users, path: 'users'
  devise_for :users, controllers: {:registrations => "users/registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#index', as: 'home'

  get 'search', to: 'player_profiles#search'

  resources :registration_steps

  resources :player_profiles
  resources :manager_profiles
  
  #get 'player_profiles', to: 'player_profiles#show'
  #get "player_profiles/:id" => "player_profiles#show"
  #get "projects/:category_id" => "projects#index"
end
