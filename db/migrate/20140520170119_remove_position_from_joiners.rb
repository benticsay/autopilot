class RemovePositionFromJoiners < ActiveRecord::Migration
  def change
    remove_column :joiners, :position, :integer
  end
end
