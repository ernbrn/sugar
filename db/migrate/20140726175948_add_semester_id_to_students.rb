class AddSemesterIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :semester_id, :integer
  end
end
