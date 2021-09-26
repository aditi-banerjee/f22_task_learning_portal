class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.integer :exam_id
      t.string :subject_name
      t.string :subject_code

      t.timestamps
    end

    add_index :subjects, :exam_id
  end
end
