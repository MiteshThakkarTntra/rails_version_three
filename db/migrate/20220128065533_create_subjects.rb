class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.date :time
      t.references :student
      t.references :teacher

      t.timestamps
    end
    add_index :subjects, :student_id
    add_index :subjects, :teacher_id
  end
end
