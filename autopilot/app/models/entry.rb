class Entry < ActiveRecord::Base

	belongs_to :user

	has_many :projects, through: :joiners
	has_many :joiners



    def self.move(project_array, new_pos, entry_to_move)

      new_pos = params[:new_pos]
      entry_to_move = self.entries.find(:entry_id)
      project_array.insert(params[:new_pos], entry_to_move.content.to_s)
      project_array.delete_at(entry_to_move.content.to_s)
      
      i = 0
      project_array.each do |entry|
        entry.position = i
        i += 1
        project_array << entry
      end

    end

      # entry.save

      # project_array.update_position

      # return project_array

      # entries = self.entries
      #ordered_entries = entries.order(position: :desc)




    # def ordered_entries
  #   entries = self.entries
  #   entries.sort do |entry_a, entry_b|
  #     entry_a.position_in_project(self) <=> entry_b.position_in_project(self)
  #   end
  # end


  # def position_in_project(project)
  #   self.joiners.find_by(project: project).position
  # end

    # @entry.position = (project.entries.order(position: :desc).first.position || 0) + 1
    # @entry.save!



end
