class Joiner < ActiveRecord::Base

	belongs_to :entry
	belongs_to :project

  # acts_as_list scope: :project 
end
