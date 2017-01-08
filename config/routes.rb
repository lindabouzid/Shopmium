Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :shops
  root to: 'shops#index'
  get "/filter_shops" => "shops#filter"
  get "/closest_shops" => "shops#closest"

end
