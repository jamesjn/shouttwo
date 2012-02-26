Shouttwo::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :shouts
  root :to => 'landing#index'
end
