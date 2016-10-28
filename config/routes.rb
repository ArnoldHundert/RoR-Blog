Rails.application.routes.draw do

  # Welcome routes
get "/"                         => "welcome#index"
get "/about-us"                 => "welcome#about_us"

# User routes
get     "/users/new"         =>  "users#new", as: "new_user"
get     "/users"             =>  "users#index", as: "users"
post    "/users"             =>  "users#create"
get     "/users/:id"         =>  "users#show", as: "user"
get     "/users/:id/edit"    =>  "users#edit", as: "edit_user"
put     "/users/:id"         =>  "users#update"
patch   "/users/:id"         =>  "users#update"
delete  "/users/:id"         =>  "users#destroy"

# Post routes
get     "/posts/new"         =>  "posts#new", as: "new_post"
get     "/posts"             =>  "posts#index", as: "posts"
post    "/posts"             =>  "posts#create"
get     "/posts/:id"         =>  "posts#show", as: "post"
get     "/posts/:id/edit"    =>  "posts#edit", as: "edit_post"
put     "/posts/:id"         =>  "posts#update"
patch   "/posts/:id"         =>  "posts#update"
delete  "/posts/:id"         =>  "posts#destroy"

# Comment routes
get     "/comments/new"         =>  "comments#new", as: "new_comment"
get     "/comments"             =>  "comments#index", as: "comments"
post    "/comments"             =>  "comments#create"
get     "/comments/:id"         =>  "comments#show", as: "comment"
get     "/comments/:id/edit"    =>  "comments#edit", as: "edit_comment"
put     "/comments/:id"         =>  "comments#update"
patch   "/comments/:id"         =>  "comments#update"
delete  "/comments/:id"         =>  "comments#destroy"

end
