class CreateProjectEntries < ActiveRecord::Migration
  def change
    create_table :project_entries do |t|
      t.integer :Project_ID
      t.string :project_name
      t.integer :student_no
      t.string :firstReader
      t.string :secondReader
      t.string :thirdReader

      t.timestamps null: false
    end
  end
end
