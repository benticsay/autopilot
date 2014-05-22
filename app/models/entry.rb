class Entry < ActiveRecord::Base

	belongs_to :user

	has_many :projects, through: :joiners
	has_many :joiners


    def self.move(project_array_original, new_pos, entry_to_move)

      old_position = entry_to_move.position.to_i
      project_array_original.delete_at(old_position)
      project_array_original.insert(new_pos, entry_to_move)

      i = 0
      project_array_original.each do |entry|
        entry.position = i
        i += 1
        entry.save!
      end
    end

end
