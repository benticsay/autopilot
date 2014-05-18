class UsersController < ApplicationController


	def show
		@user = User.find(params[:id])

		@entries = Entry.order(id: :desc)
	    @entry = Entry.find(params[:id])

	    @projects = Project.order(id: :desc)
	    @project = Project.find(params[:id])

	end





end