class CreateAdminLogIns < ActiveRecord::Migration
  def change
    create_table :admin_log_ins do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
