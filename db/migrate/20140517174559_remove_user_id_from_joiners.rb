class RemoveUserIdFromJoiners < ActiveRecord::Migration
  def change
    remove_column :joiners, :user_id, :integer
  end
end
