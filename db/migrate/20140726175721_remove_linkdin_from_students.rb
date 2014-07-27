class RemoveLinkdinFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :linkdin
  end
end
