class CreateMcqOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :mcq_options do |t|
      t.integer :question_id
      t.string :option
      t.boolean :is_correct, default: false

      t.timestamps
    end
    add_index :mcq_options, :question_id
  end
end
