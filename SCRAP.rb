SCRAP

<!--

-->

#alternate link_to method





resources :users do 
    resources :entries
    resources :projects do
      resources :entries
    end
  end 

end




# get "/" do => "_____#index"

# "/(:user_id i.e. session)/index" = user home page, show all entries and projects

  # user_projects GET    /users/:user_id/projects(.:format)                              projects#index
  # user_entries GET    /users/:user_id/entries(.:format)                               entries#index

# "/(:user_id i.e. session)/index"



# get "sign_in" => "authentication#sign_in"
# get "signed_out" => "authentication#signed_out"
# get "change_password" => "authentication#change_password"
# get "forgot_password" => "authentication#forgot_password"
# get "new_user" => "authentication#new_user"
# get "password_sent" => "authentication#password_sent"


SHOW 
          user_entries GET    /users/:user_id/entries(.:format)                               entries#index
          user_entry GET    /users/:user_id/entries/:id(.:format)                           entries#show

          user_project_entries GET    /users/:user_id/projects/:project_id/entries(.:format)          entries#index
          user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#show

          user_projects GET    /users/:user_id/projects(.:format)                              projects#index
          user_project GET    /users/:user_id/projects/:id(.:format)                          projects#show



CREATE 
                        POST   /users/:user_id/entries(.:format)                               entries#create

                        POST   /users/:user_id/projects/:project_id/entries(.:format)          entries#create

                        POST   /users/:user_id/projects(.:format)                              projects#create




EDIT 
        edit_user_entry GET    /users/:user_id/entries/:id/edit(.:format)                      entries#edit
                        PATCH  /users/:user_id/entries/:id(.:format)                           entries#update
                        PUT    /users/:user_id/entries/:id(.:format)                           entries#update

     user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#show
                        PATCH  /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update
                        PUT    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update

      edit_user_project GET    /users/:user_id/projects/:id/edit(.:format)                     projects#edit
                        PATCH  /users/:user_id/projects/:id(.:format)                          projects#update
                        PUT    /users/:user_id/projects/:id(.:format)                          projects#update

DELETE

                        DELETE /users/:user_id/entries/:id(.:format)                           entries#destroy

                        DELETE /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#destroy

                        DELETE /users/:user_id/projects/:id(.:format)                          projects#destroy






#             Prefix Verb   URI Pattern                                                     Controller#Action
           user_entries GET    /users/:user_id/entries(.:format)                               entries#index
                        POST   /users/:user_id/entries(.:format)                               entries#create
         # new_user_entry GET    /users/:user_id/entries/new(.:format)                           entries#new
        edit_user_entry GET    /users/:user_id/entries/:id/edit(.:format)                      entries#edit
             user_entry GET    /users/:user_id/entries/:id(.:format)                           entries#show
                        PATCH  /users/:user_id/entries/:id(.:format)                           entries#update
                        PUT    /users/:user_id/entries/:id(.:format)                           entries#update
                        DELETE /users/:user_id/entries/:id(.:format)                           entries#destroy


   user_project_entries GET    /users/:user_id/projects/:project_id/entries(.:format)          entries#index
                        POST   /users/:user_id/projects/:project_id/entries(.:format)          entries#create
 # new_user_project_entry GET    /users/:user_id/projects/:project_id/entries/new(.:format)      entries#new
edit_user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id/edit(.:format) entries#edit
     user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#show
                        PATCH  /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update
                        PUT    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update
                        DELETE /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#destroy


          user_projects GET    /users/:user_id/projects(.:format)                              projects#index
                        POST   /users/:user_id/projects(.:format)                              projects#create
       # new_user_project GET    /users/:user_id/projects/new(.:format)                          projects#new
      edit_user_project GET    /users/:user_id/projects/:id/edit(.:format)                     projects#edit
           user_project GET    /users/:user_id/projects/:id(.:format)                          projects#show
                        PATCH  /users/:user_id/projects/:id(.:format)                          projects#update
                        PUT    /users/:user_id/projects/:id(.:format)                          projects#update
                        DELETE /users/:user_id/projects/:id(.:format)                          projects#destroy



                  users GET    /users(.:format)                                                users#index
                        POST   /users(.:format)                                                users#create
               new_user GET    /users/new(.:format)                                            users#new
              edit_user GET    /users/:id/edit(.:format)                                       users#edit
                   user GET    /users/:id(.:format)                                            users#show
                        PATCH  /users/:id(.:format)                                            users#update
                        PUT    /users/:id(.:format)                                            users#update
                        DELETE /users/:id(.:format)                                            users#destroy





# user home page
#                    user GET    /users/:id(.:format)                                            users#show

# on home page: 
    # show all entries


    # show all projects




    # create a new entry




    # create a new project





#individual entry page







#individual project page 









#create 

#SHOW

#show all user entries
#            user_entries GET    /users/:user_id/entries(.:format)                               entries#index

#show all entries for given project
#    user_project_entries GET    /users/:user_id/projects/:project_id/entries(.:format)          entries#index

#view individual entry
#              user_entry GET    /users/:user_id/entries/:id(.:format)                           entries#show




#create user_entry
#                         POST   /users/:user_id/entries(.:format)                               entries#create

#edit entry view
#         edit_user_entry GET    /users/:user_id/entries/:id/edit(.:format)                      entries#edit
#                         PATCH  /users/:user_id/entries/:id(.:format)                           entries#update
#                         PUT    /users/:user_id/entries/:id(.:format)                           entries#update


# delete user entry
#                         DELETE /users/:user_id/entries/:id(.:format)                           entries#destroy





#add entry to project (may not exit outside that project)
#ISSUE: PROJECT SPECIFIC ENTRIES VS. REPOSITORY USE ANYWHERE ENTRIES
#                         POST   /users/:user_id/projects/:project_id/entries(.:format)          entries#create


# edit_user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id/edit(.:format) entries#edit
#                         PATCH  /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update
#                         PUT    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#update
#                         DELETE /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#destroy



#      user_project_entry GET    /users/:user_id/projects/:project_id/entries/:id(.:format)      entries#show

