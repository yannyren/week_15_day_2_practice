class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :name
      t.references :cohort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
