class JoinersController < ApplicationController

	def create
		# @project = Project.find(params[:project_id])

		@joiner = Joiner.create(joiner_attributes)

		# {				
		# 			project_id: params[:project_id],
		# 			entry_id: params[:entry_id],
		# 			rating: 0
		# 			})
# binding.pry
		redirect_to "/users/#{current_user.id}/projects/#{@joiner.project_id}"
	end


		def destroy


			@joiner = Joiner.where(entry_id: params[:id]).first
			@joiner.destroy
			redirect_to "/users/#{current_user.id}/projects/#{@joiner.project_id}"
		end


	  private

	  # strong params
	  def joiner_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	    params.require(:joiner).permit(:project_id, :entry_id, :rating)
	  end


end