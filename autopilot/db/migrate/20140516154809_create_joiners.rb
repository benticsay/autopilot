class CreateJoiners < ActiveRecord::Migration
  def change
    create_table :joiners do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :entry_id
      t.integer :position
      t.integer :rating

      t.timestamps
    end
  end
end
