class CreateReadersInterests < ActiveRecord::Migration
  def change
    create_table :readers_interests do |t|
	  t.string :staff_id
	  t.string :interest
      t.timestamps null: false
    end
  end
end
