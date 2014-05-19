class EntriesController < ApplicationController


	def show
	@entry = Entry.find(params[:id])
		
	end

#COME BACK TO 
	def create


		@entry = Entry.new(entry_attributes)
		@entry.save
		
		if @entry.project_id != nil
			Joiner.create({
				project_id: @entry.project_id,
				entry_id: @entry.id,
				position: nil,
				rating: 0
				})

			redirect_to "/users/#{current_user.id}/projects/#{@entry.project_id}"

		else
		redirect_to "/users/#{current_user.id}"			

		end

		# Entry.create(entry_attributes)


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
    params.require(:entry).permit(:category, :content, :user_id, :project_id)
  end


end