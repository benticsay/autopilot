class UsersController < ApplicationController


	def show
		@user = User.find(params[:id])

		@entries = @user.entries.order(id: :desc)
	    @entry = Entry.find(params[:id])

	    @projects = @user.projects.order(id: :desc)
	    @project = Project.find(params[:id])

	end





end