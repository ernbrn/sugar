class RemoveSemesters < ActiveRecord::Migration
  def change
    drop_table :semesters
  end
end
