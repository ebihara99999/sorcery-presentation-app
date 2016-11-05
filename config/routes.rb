Rails.application.routes.draw do
  get 'oauths/oauth'

  get 'oauths/callback'

  root :to => 'users#index'
  resources :user_sessions
  #resources :users
  resources :admins, controller: :users, type: 'Admin'
  resources :general_users, controller: :users, type: 'GeneralUser'
  
  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

  # For external login (Now supports only twitter).
  post "oauth/callback" => "oauths#callback"
  get "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider
  
end
