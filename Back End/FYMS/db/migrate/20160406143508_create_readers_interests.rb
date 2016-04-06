class CreateReadersInterests < ActiveRecord::Migration
  def change
    create_table :readers_interests do |t|
	  t.String :staff_id
	  t.String :interest
      t.timestamps null: false
    end
  end
end
