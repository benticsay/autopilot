class JoinersController < ApplicationController

def create
	@joiner = Joiner.create({				
				project_id: params[:project_id],
				entry_id: params[:entry_id],
				position: nil,
				rating: 0
				})

	redirect_to "/users/#{current_user.id}/projects/#{params[:project_id]}"
end



  private

  # strong params
  def joiner_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:joiner).permit(:project_id, :project_id, :position, :rating)
  end


end