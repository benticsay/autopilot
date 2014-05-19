class Entry < ActiveRecord::Base

	belongs_to :user

	has_many :projects, through: :joiners
	has_many :joiners


end
