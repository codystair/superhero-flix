Rails.application.routes.draw do
  resources :users
  root "movies#index"
  # get "/movies" => "movies#index"
  # get "/movies/:id" => "movies#show", as: "movie"
  # get "/movies/:id/edit" => "movies#edit", as: "edit_movie"
  # patch "/movies/:id" => "movies#update", as: "update_movie"
  # get "/movies/new" => "movies#new"
  resources :movies do
    resources :reviews
  end
  resources :users
  get "signup" => "users#new"
  resource :session, only: [:new, :create, :destroy]
  get "signin" => "sessions#new"
end
