TillBeslut::Application.routes.draw do
  resources :proposals, only: [:index]
  get "/motioner" => "proposals#index"
  root to: 'proposals#index'
end
