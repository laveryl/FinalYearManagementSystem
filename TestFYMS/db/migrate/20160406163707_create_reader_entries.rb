class CreateReaderEntries < ActiveRecord::Migration
  def change
    create_table :reader_entries do |t|
      t.integer :Staff_ID
      t.string :name
      t.string :school
      t.string :office_location
      t.string :email
      t.string :availability
      t.integer :NumberProjectsSupervised
      t.integer :secondReading
      t.integer :thirdReading

      t.timestamps null: false
    end
  end
end
