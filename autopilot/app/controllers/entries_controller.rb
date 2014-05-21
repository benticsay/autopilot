class EntriesController < ApplicationController


	def show
	@entry = Entry.find(params[:id])
		
	end

#COME BACK TO 
	def create


		@entry = Entry.create(entry_attributes)

		# .new(entry_attributes)
		# @entry.save

			if params[:project_id] != nil
				Joiner.create({				
							project_id: params[:project_id], # <- will this return empty or nil if there is no project_id params ?
							entry_id: @entry.id,
							rating: 0
							})
			end		
#insert redirect conditional here:
	#if params[:project_id] = nil
		redirect_to "/users/#{current_user.id}" 

		#if params[:project_id] != nil
		# "/users/#{current_user.id}/projects/#{params[:project_id]}"
	
	end

		# if @entry.project_id != nil
		# 	Joiner.create({
		# 		project_id: @entry.project_id,
		# 		entry_id: @entry.id,
		# 		position: nil,
		# 		rating: 0
		# 		})

		# else
		# redirect_to "/users/#{current_user.id}"			

		# end

		# Entry.create(entry_attributes)




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