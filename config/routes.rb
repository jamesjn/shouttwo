Shouttwo::Application.routes.draw do
  resources :shouts
  root :to => 'landing#index'
end
