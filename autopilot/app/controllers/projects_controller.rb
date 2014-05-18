class ProjectsController < ApplicationController


	def show
	@user = User.find(params[:id])
	@entry = Entry.new
	@project = Project.find(params[:id])
		
	end


	def create

		Project.create(project_attributes)


		redirect_to "/users/#{params[:user_id]}"
		
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])
		@project.update_attributes(project_attributes)

		redirect_to
	end

	def destroy
		@project = Project.find(params[:id])
		@project.destroy

		redirect_to
	end

  private

  # strong params
  def project_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:project).permit(:title, :logline)
  end


end