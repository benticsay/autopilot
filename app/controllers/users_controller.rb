class UsersController < ApplicationController



	def new
	  @user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    redirect_to "/users/#{current_user.id}", :notice => "Signed up!"
		  else
		    render "new"
	  end
	end

	def show

		@current_user = current_user

		@entries = current_user.entries.order(id: :desc)
    @entry = Entry.new

    @projects = current_user.projects.order(id: :desc)
    @project = Project.new

	end

	def index
		@users = User.all
	end


	private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end


end

