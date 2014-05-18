Rails.application.routes.draw do


	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	root :to => "users#new"
	resources :users
	resources :sessions





# 	# show individual project
# 	get "/projects/:id" => "projects#show"

# 	# create project entry
# 	post "/users/:user_id/projects/:project_id/entries" => "entries#create"



# #user homepage
# # get "/users/:id" => "users#show"

# post "/users/:user_id/entries" => "entries#create"

# post "/users/:user_id/projects" => "projects#create"


# get "/users/:user_id/projects/:id" => "projects#show"

# get "/users/:user_id/projects/:id/edit" => "projects#edit"

# patch "/users/:user_id/projects/:id" => "projects#update"

# delete "/users/:user_id/projects/:id" => "projects#destroy"




# #user project page




# get "/users/:user_id/projects/:project_id/entries/:id" => "entries#edit"

# patch "/users/:user_id/projects/:project_id/entries/:id" => "entries#update"

# delete "/users/:user_id/projects/:project_id/entries/:id" => "entries#destroy"



# #user entry page

# get "/users/:user_id/entries/:id" => "entries#show"

# get "/users/:user_id/entries/:id/edit" => "entries#edit"

# patch "/users/:user_id/entries/:id/edit" => "entries#update"

# delete "/users/:user_id/entries/:id/edit" => "entries#destroy"

end

	# # get ALL users - edited to show all projects
	# get "/users" => "users#index"

	# # get ONE user
	# get "/users/:id" => "users#show"

	# # show NEW user form
	# get "/user/new" => "users#new"

	# # process chef CREATE action from form
	# post "/users" => "users#create"

	# # show LOGIN form
	# get "/user/login" => "users#login"

	# # process login form
	# post "/user/login" => "users#process_login"


