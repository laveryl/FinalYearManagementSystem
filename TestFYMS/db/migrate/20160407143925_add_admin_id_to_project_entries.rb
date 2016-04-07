class AddAdminIdToProjectEntries < ActiveRecord::Migration
  def change
    add_column :project_entries, :admin_id, :integer
  end
end
