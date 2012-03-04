Shouttwo::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resource :settings
  resources :shouts
  root :to => 'landing#index'
end
