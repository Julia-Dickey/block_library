Rails.application.routes.draw do
  resources :partners
  resources :profiles
  resources :events
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/pages/:page" => "pages#show"

end
