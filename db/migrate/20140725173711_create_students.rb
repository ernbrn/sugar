class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :github
      t.string :linkdin
      t.text :bio
      t.text :blurb
      t.string :image_uid
      t.boolean :private

      t.timestamps
    end
  end
end
