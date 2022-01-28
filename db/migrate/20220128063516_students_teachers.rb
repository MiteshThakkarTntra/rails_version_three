class StudentsTeachers < ActiveRecord::Migration
  def self.up
    create_table 'students_teachers', :id => false do |t|
      t.column :student_id, :integer
      t.column :teacher_id, :integer
    end
  end
end
