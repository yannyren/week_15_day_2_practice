class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.integer :year

      t.timestamps null: false
    end
  end
end
