class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.integer :topic_id
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :chapters, :topic_id
  end
end
