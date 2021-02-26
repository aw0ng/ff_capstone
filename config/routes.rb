Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
    patch "/dogs/:id" => "dogs#update"
  end
end
