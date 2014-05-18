Rails.application.routes.draw do


#WORK BACKWARDS: VIEWS -> CONTROLLER -> ROUTES

#NESTED CONTROLLER I.E. CALLING METHODS DEFINED IN E.G. ENTRY MODEL IN USER CONTROLLER

# "/" = landing page; user sign-in etc

#user homepage
get "/users/:id" => "users#show", as: :user 

post "/users/:user_id/entries" => "entries#create"

post "/users/:user_id/projects" => "projects#create"


get "/users/:user_id/projects/:id" => "projects#show", as: :project

get "/users/:user_id/projects/:id/edit" => "projects#edit"

patch "/users/:user_id/projects/:id" => "projects#update"

delete "/users/:user_id/projects/:id" => "projects#destroy"




#user project page


post "/users/:user_id/projects/:project_id/entries" => "entries#create"

get "/users/:user_id/projects/:project_id/entries/:id" => "entries#edit"

patch "/users/:user_id/projects/:project_id/entries/:id" => "entries#update"

delete "/users/:user_id/projects/:project_id/entries/:id" => "entries#destroy"



#user entry page

get "/users/:user_id/entries/:id" => "entries#show", as: :entry

get "/users/:user_id/entries/:id/edit" => "entries#edit"

patch "/users/:user_id/entries/:id/edit" => "entries#update"

delete "/users/:user_id/entries/:id/edit" => "entries#destroy"

end




