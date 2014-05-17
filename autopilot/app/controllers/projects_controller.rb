class ProjectsController < ApplicationController


	def show

	@project = Project.find(params[:id])
		
	end


	def create

		Project.create(project_attributes)

		redirect_to user_path
		
	end

  private

  # strong params
  def project_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:project).permit(:title, :logline)
  end


end