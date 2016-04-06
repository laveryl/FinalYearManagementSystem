class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
	  t.String :staff_ID
	  t.String :name
	  t.String :school
	  t.String :office_location
	  t.String :available
	  t.integer :projects_supervised
	  t.integer :second_reading
	  t.integer :third_reading
      t.timestamps null: false
    end
  end
end
