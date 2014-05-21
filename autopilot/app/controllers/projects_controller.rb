class ProjectsController < ApplicationController



	def show
		@entry = Entry.new
		@project = Project.find(params[:id])
		@joiner = Joiner.new

		@unused_entries = []
			Entry.all.each do |entry_instance|
				if entry_instance.projects == []
				@unused_entries << entry_instance
				# else
				end
				# binding.pry
		end


		# @entries = Entry.all.joiners.where(project_id: nil).order(id: :asc)
		# @entries = @project.ordered_entries # <- instance of PJ's created 'ordered_entries' method
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

		redirect_to "/user/@{current_user.id}"
	end

	private

	# strong params
	def project_attributes
	# whitelisting parts of the params hash, that are DB-safe
	params.require(:project).permit(:title, :logline, :user_id)
	end


end