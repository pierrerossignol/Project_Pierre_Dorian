class AddPremiumAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :premium_account, :boolean
  end
end
