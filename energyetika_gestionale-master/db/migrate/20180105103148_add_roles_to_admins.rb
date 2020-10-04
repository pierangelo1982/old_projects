class AddRolesToAdmins < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :superadmin, :boolean, :null => false, :default => false
    add_column :admins, :admin, :boolean, :null => false, :default => false
    add_column :admins, :agent, :boolean, :null => false, :default => false
    add_column :admins, :consultant, :boolean, :null => false, :default => false
    add_column :admins, :insider, :boolean, :null => false, :default => false
  end
end
