class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :focus
      t.string :season
      t.integer :year

      t.timestamps
    end
  end
end
