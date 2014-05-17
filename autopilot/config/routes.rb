Rails.application.routes.draw do


#WORK BACKWARDS: VIEWS -> CONTROLLER -> ROUTES

# "/" = landing page; user sign-in etc




# "/(:user_id i.e. session)/index" = user home page, show all entries and projects

  # user_projects GET    /users/:user_id/projects(.:format)                              projects#index
  # user_entries GET    /users/:user_id/entries(.:format)                               entries#index

# "/(:user_id i.e. session)/index"


end

