Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # SIGNUP
    post "/users" => "users#create"
    # LOGIN
    post "/sessions" => "sessions#create"
    # DOGS ACTIONS
    get "/dogs" => "dogs#index"
    get "/dogs/:id" => "dogs#show"
    post "/dogs" => "dogs#create"
    patch "/dogs/:id" => "dogs#update"
    # BREEDS ACTIONS
    get "/breeds" => "breeds#index"
    get "/breeds/:id" => "breeds#show"
    post "/breeds" => "breeds#create"
    patch "/breeds/:id" => "breeds#update"
    # DIETS ACTIONS
    get "/diets" => "diets#index"
    get "/diets/:id" => "diets#show"
    post "/diets" => "diets#create"
    patch "/diets/:id" => "diets#update"
    # FITNESSES ACTIONS
    get "/fitnesses" => "fitnesses#index"
    get "/fitnesses/:id" => "fitnesses#show"
    post "/fitnesses" => "fitnesses#create"
    patch "/fitnesses/:id" => "fitnesses#update"
  end
end
