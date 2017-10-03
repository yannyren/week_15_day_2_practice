class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.text :title
      t.references :student, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
