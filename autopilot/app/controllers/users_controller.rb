class UsersController < ApplicationController



	def new
	  @user = User.new
	end

	def create
	  @user = User.new(user_params)
	  if @user.save
	    redirect_to root_url, :notice => "Signed up!"
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


# before_filter :authorize, :except => [:index, :show]
# # before_filter :authorize, :only => :delete
# before_action :authenticate_with_basic_auth




	# def login

	# end


	# def process_login
	#     email = params[:email]
	#     password = params[:password]

	#     @current_user = User.authenticated?(email, password)

	#     if @current_user
	#       redirect_to "/users/:id"
	#     else
	#       render text: "Login Failed! Invalid email or password!"
	#     end
		
	# end
