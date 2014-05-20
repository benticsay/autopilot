class Project < ActiveRecord::Base

	belongs_to :user

	has_many :entries, through: :joiners
	has_many :joiners
  
  def ordered_entries
    entries = self.entries
    entries.sort do |entry_a, entry_b|
      entry_a.position_in_project(self) <=> entry_b.position_in_project(self)
    end
  end

end
