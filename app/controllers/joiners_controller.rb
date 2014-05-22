class JoinersController < ApplicationController

	def create
		@joiner = Joiner.create(joiner_attributes)
		redirect_to "/users/#{current_user.id}/projects/#{@joiner.project_id}"
	end


		def destroy
			@joiner = Joiner.where(entry_id: params[:id]).first
			@joiner.destroy
			redirect_to "/users/#{current_user.id}/projects/#{@joiner.project_id}"
		end


	  private

	  def joiner_attributes
	    params.require(:joiner).permit(:project_id, :entry_id, :rating)
	  end


end