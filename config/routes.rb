Rails.application.routes.draw do
  # resources :users
  resources :sessions

  # Welcome routes
get "/"                         => "welcome#index"
get "/about-us"                 => "welcome#about_us"

# User routes
get     "/users/new"         =>  "users#new", as: "new_user"
post    "/users/new"         =>  "users#create"
get     "/users"             =>  "users#index", as: "users"
get     "/users/:id"         =>  "users#show", as: "user"
get     "/users/:id/edit"    =>  "users#edit", as: "edit_user"
put     "/users/:id"         =>  "users#update"
patch   "/users/:id"         =>  "users#update"
delete  "/users/:id"         =>  "users#destroy"

# Post routes
get     "/posts/new"         =>  "posts#new", as: "new_post"
post    "/posts/new"         =>  "posts#create"
get     "/posts"             =>  "posts#index", as: "posts"
get     "/posts/:id"         =>  "posts#show", as: "post"
get     "/posts/:id/edit"    =>  "posts#edit", as: "edit_post"
put     "/posts/:id"         =>  "posts#update"
patch   "/posts/:id"         =>  "posts#update"
delete  "/posts/:id"         =>  "posts#destroy"

# Comment routes
get     "/comments/new"         =>  "comments#new", as: "new_comment"
post    "/comments/new"         =>  "comments#create"
get     "/comments"             =>  "comments#index", as: "comments"
get     "/comments/:id"         =>  "comments#show", as: "comment"
get     "/comments/:id/edit"    =>  "comments#edit", as: "edit_comment"
put     "/comments/:id"         =>  "comments#update"
patch   "/comments/:id"         =>  "comments#update"
delete  "/comments/:id"         =>  "comments#destroy"

end
