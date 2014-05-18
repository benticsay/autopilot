class ProjectsController < ApplicationController


	def show
	@user = User.find(params[:id])
	@entry = Entry.new
	@project = Project.find(params[:id])
		
	end


	def create

		Project.create(project_attributes)



# COME BACK TO THIS REDIRECT
		# redirect_to "/users/#{@user.id}/projects/#{@project.id}"
		
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
	end

	def destroy
		@project = Project.find(params[:id])
	end

  private

  # strong params
  def project_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:project).permit(:title, :logline)
  end


end