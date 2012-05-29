Votering::Application.routes.draw do
  resources :proposals, only: [:index]
  get "/motioner" => "proposals#index"
end
