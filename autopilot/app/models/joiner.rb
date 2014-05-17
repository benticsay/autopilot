class Joiner < ActiveRecord::Base

	belongs_to :entry
	belongs_to :project
end
