class JoinersController < ApplicationController

def create
	@project = Project.find(params[:project_id])

	@joiner = Joiner.create({				
				project_id: params[:project_id],
				entry_id: params[:id],
				position: nil,
				rating: 0
				})

	redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
end


	# def update
	# 	@joiner = Joiner.find(params[:id])
	# 	@entry.update_attributes(entry_attributes)

	# 	redirect_to "/users/#{current_user.id}/projects/#{@project.id}"
	# end


  private

  # strong params
  def joiner_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:joiner).permit(:project_id, :entry_id, :position, :rating)
  end


end