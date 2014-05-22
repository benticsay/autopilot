class RemoveTypeFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :type, :string
  end
end
