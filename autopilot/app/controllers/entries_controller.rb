class EntriesController < ApplicationController

	def show
	@user = User.find(params[:id])
	@entry = Entry.find(params[:id])
		
	end

	def create
		
		 Entry.create(entry_attributes)
# COME BACK TO THIS REDIRECT
		# redirect_to "/users/#{params[:id]}"
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

  private

  # strong params
  def entry_attributes
    params.require(:entry).permit(:category, :content)
  end


end