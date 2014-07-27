class AddFocusToStudents < ActiveRecord::Migration
  def change
    add_column :students, :focus, :string
  end
end
