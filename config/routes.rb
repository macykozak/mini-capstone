Rails.application.routes.draw do
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"

  post "/carted_products" => "users#create"
  get "/carted_products" => "products#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/products" => "products#index"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
