class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :student_no
      t.integer :first_reader
      t.integer :second_reader
      t.integer :third_reader
      
      t.timestamps null: false
    end
  end
end