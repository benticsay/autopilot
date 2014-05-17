class EntriesController < ApplicationController

	def show

	@entry = Entry.find(params[:id])
		
	end

	def create
		 Entry.create(entry_attributes)

		redirect_to user_path
	end

  private

  # strong params
  def entry_attributes
    params.require(:entry).permit(:category, :content)
  end


end