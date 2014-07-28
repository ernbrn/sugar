class RemoveSemesterIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :semester_id, :integer
    remove_column :students, :focus
  end
end
