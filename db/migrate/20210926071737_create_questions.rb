class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.integer :chapter_id
      t.string :question
      t.text :description
      t.integer :category

      t.timestamps
    end
    add_index :questions, :chapter_id
  end
end
