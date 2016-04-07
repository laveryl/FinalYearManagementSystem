class CreateLogIns < ActiveRecord::Migration
  def change
    create_table :log_ins do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
