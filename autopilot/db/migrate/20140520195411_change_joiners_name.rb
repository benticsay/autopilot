class ChangeJoinersName < ActiveRecord::Migration
  def change
    rename_table :joiners, :project_entries
  end
end
