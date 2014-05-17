Rails.application.routes.draw do


#WORK BACKWARDS: VIEWS -> CONTROLLER -> ROUTES

#NESTED CONTROLLER I.E. CALLING METHODS DEFINED IN E.G. ENTRY MODEL IN USER CONTROLLER

# "/" = landing page; user sign-in etc

#user homepage
get "/users/:id" => "users#show", as: :user

get "/users/:user_id/entries/:id" => "entries#show", as: :entry 

post "/users/:user_id/entries" => "entries#create"

get "/users/:user_id/projects/:id" => "projects#show", as: :project 

post "/users/:user_id/projects" => "projects#create"

end

# # show project
#           user_project GET    /users/:user_id/projects/:id(.:format)                          projects#show


# #show entry
#           user_entry GET    /users/:user_id/entries/:id(.:format)                           entries#show






