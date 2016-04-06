class CreateReaders < ActiveRecord::Migration
  def change
    create_table :readers do |t|
	  t.string :staffID
	  t.string :name
	  t.string :school
	  t.string :officeLocation
	  t.string :available
	  t.integer :projectssupervised
	  t.integer :secondReading
	  t.integer :thirdReading

      t.timestamps null: false
    end
  end
end
