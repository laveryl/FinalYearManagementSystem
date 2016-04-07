class CreateAdminReaderEntries < ActiveRecord::Migration
  def change
    create_table :admin_reader_entries do |t|
      t.integer :Staff_ID
      t.string :name
      t.string :school
      t.string :office_location
      t.string :email
      t.string :availability
      t.integer :NumberProjectsSupervised
      t.integer :second_reading
      t.integer :third_reading

      t.timestamps null: false
    end
  end
end
