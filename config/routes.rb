Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "index#index"
  get "/about" => "index#about"
  get "/posts" => "posts#show"
  get "/signup" => "user#signup"
  get "/login" => "user#loginform"
  get "chats/:id" => "chats#message"
  post "/comments/:id" => "comments#new"
  post "comments/:id/destroy" => "comments#destroy"
  post "/logout" => "user#logout"
  post "/login" => "user#login"
  post "/user/new" => "user#new"
  post "/posts/create" => "posts#create"

  get "/users" => "user#view"
  get "/posts/new" => "posts#new"
  get "/posts/:id" => "posts#view"
  post "/posts/:id/destroy" => "posts#destroy"
end
