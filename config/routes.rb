Shouttwo::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :favorites
  resource :settings
  match "/shouts/mine" => "shouts#mine"
  match "/search/:query" => "landing#search"
  resources :shouts do
  end
  root :to => 'landing#index'
end
