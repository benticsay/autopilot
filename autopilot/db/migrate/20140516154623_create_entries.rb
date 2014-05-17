class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.string :category
      t.string :heading
      t.text :content

      t.timestamps
    end
  end
end
