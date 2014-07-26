class AddLinkedinToStudents < ActiveRecord::Migration
  def change
    add_column :students, :linkedin, :string
  end
end
