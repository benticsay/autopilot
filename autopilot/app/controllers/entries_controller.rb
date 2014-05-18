class EntriesController < ApplicationController


	def show
	@user = User.find(params[:id])
	@entry = Entry.find(params[:id])
		
	end

	def create
		
		 Entry.create(entry_attributes)

		redirect_to "/users/#{params[:user_id]}"
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

		redirect_to 
	end

  private

  # strong params
  def entry_attributes
    params.require(:entry).permit(:category, :content)
  end


end