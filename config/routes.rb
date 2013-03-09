EngineOnRails::Engine.routes.draw do
  root :to => "home#index"

  resources :posts
end
