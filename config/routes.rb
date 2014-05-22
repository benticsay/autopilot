Rails.application.routes.draw do

#user log in and authentication
	get "log_out" => "sessions#destroy", :as => "log_out"
	get "log_in" => "sessions#new", :as => "log_in"
	get "sign_up" => "users#new", :as => "sign_up"
	root :to => "users#new"
	resources :users
	resources :sessions

# show routes
	get "/users/:user_id/entries/:id" => "entries#show"
	get "/users/:user_id/projects/:id" => "projects#show"

# create routes
	post "/users/:user_id/entries" => "entries#create"
	post "/users/:user_id/projects" => "projects#create"
	post "/users/:user_id/joiners" => "joiners#create"

	get "/users/:user_id/projects/:project_id/entries/:entry_id/rearrange" => "projects#rearrange"


	#create an entry from within a project
	# post "/users/:user_id/projects/:project_id/entries" => "entries#create"

	#edit routes
	get "/users/:user_id/entries/:id/edit" => "entries#edit"
	patch "/users/:user_id/entries/:id" => "entries#update"

	get "/users/:user_id/projects/:id/edit" => "projects#edit"
	patch "/users/:user_id/projects/:id" => "projects#update"

	get "/users/:user_id/projects/:project_id/entries/:id" => "entries#edit"
	patch "/users/:user_id/projects/:project_id/entries/:id" => "joiners#update"


	#delete routes
	delete "/users/:user_id/entries/:id" => "entries#destroy"

	delete "/users/:user_id/projects/:id" => "projects#destroy"

	delete "/users/:user_id/projects/:project_id/entries/:id" => "entries#destroy"

	delete "/users/:user_id/joiners/:id"=> "joiners#destroy"


	end


