class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :boolean, default: false
  end
end
