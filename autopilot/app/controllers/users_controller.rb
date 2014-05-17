class UsersController < ApplicationController


	def show
		@user = User.find(3)

		@entries = Entry.order(id: :desc)
	    @entry = Entry.new

	    @projects = Project.order(id: :desc)
	    @project = Project.new

	end





end