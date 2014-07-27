class CreateSemesters < ActiveRecord::Migration
  def change
    create_table :semesters do |t|
      t.string :season

      t.timestamps
    end
  end
end
