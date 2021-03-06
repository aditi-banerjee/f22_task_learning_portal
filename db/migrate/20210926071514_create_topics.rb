class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :subject_id
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :topics, :subject_id
  end
end
