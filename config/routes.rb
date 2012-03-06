Shouttwo::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :favorites
  resource :settings
  resources :shouts
  root :to => 'landing#index'
end
