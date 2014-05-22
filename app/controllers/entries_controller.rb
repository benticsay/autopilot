class EntriesController < ApplicationController


	def show
	@entry = Entry.find(params[:id])
	end

	def create


		@entry = Entry.create(entry_attributes)

		#conditionals here relate to creating an entry from the project page
			# if params[:project_id] != nil
			# 	Joiner.create({				
			# 				project_id: params[:project_id], 
			# 				entry_id: @entry.id,
			# 				rating: 0
			# 				})
			# end		


			#insert redirect conditional here:
			# if params[:project_id] = nil
				redirect_to "/users/#{current_user.id}" 
			# else
			# 	redirect_to "/users/#{current_user.id}/projects/#{}"
			# end
	end

	def edit
		@entry = Entry.find(params[:id])
	end

	def update
		@entry = Entry.find(params[:id])
		@entry.update_attributes(entry_attributes)

		redirect_to 
	end

	def destroy
		@entry = Entry.find(params[:id])
		@entry.destroy
		redirect_to "/users/#{current_user.id}"
	end

  private

  # strong params
  def entry_attributes
    params.require(:entry).permit(:category, :content, :user_id, :position)
  end


end