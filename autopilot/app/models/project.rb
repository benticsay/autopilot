class Project < ActiveRecord::Base

	belongs_to :user

	has_many :entries, through: :joiners

	has_many :joiners

end
