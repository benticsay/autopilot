class RemoveHeadingFromEntries < ActiveRecord::Migration
  def change
    remove_column :entries, :heading, :string
  end
end
