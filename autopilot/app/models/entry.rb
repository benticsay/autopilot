class Entry < ActiveRecord::Base

	belongs_to :user

	has_many :projects, through: :joiners
	has_many :joiners

  # def position_in_project(project)
  #   self.joiners.find_by(project: project).position
  # end

end
