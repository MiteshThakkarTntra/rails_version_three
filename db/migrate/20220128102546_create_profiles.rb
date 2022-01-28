class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.references :student
      t.references :teacher

      t.timestamps
    end
    add_index :profiles, :student_id
    add_index :profiles, :teacher_id
  end
end
