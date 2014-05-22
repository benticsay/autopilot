class ProjectsController < ApplicationController



	def show
		@entry = Entry.new
		@project = Project.find(params[:id])
		@joiner = Joiner.new
		@project_entries = @project.entries.order(position: :asc)

		@unused_entries = []
			Entry.all.each do |entry_instance|
					if entry_instance.projects == []
					@unused_entries << entry_instance
					end
			end
	end


	def create
		Project.create(project_attributes)
		redirect_to "/users/#{current_user.id}"
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update_attributes(project_attributes)
		redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy
		redirect_to "/users/#{current_user.id}"
	end


	def rearrange
		project = Project.find(params[:project_id])
		new_pos = params[:new_pos].to_i - 1
		entry_to_move = Entry.find(params[:entry_to_move])
		project_array = project.entries.order(position: :asc).map{|x| x}

		if params[:new_pos].to_i > project_array.length
		  flash.now.alert = "Invalid Position!"
			  else  
					Entry.move(project_array, new_pos, entry_to_move)
		end

		@project_entries = project.entries.order(position: :asc)

		redirect_to "/users/#{current_user.id}/projects/#{project.id}"
	end

	private


	def project_attributes
	params.require(:project).permit(:title, :logline, :user_id)
	end


end