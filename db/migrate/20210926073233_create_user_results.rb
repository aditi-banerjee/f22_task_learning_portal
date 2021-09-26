class CreateUserResults < ActiveRecord::Migration[5.2]
  def change
    create_table :user_results do |t|
      t.integer :user_id
      t.integer :question_id
      t.integer :mcq_option_id
      t.boolean :is_skipped,   default: false

      t.timestamps
    end
    add_index :user_results, :user_id
    add_index :user_results, :question_id
    add_index :user_results, :mcq_option_id
  end
end
