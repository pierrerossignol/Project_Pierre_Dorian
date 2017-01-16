class RemoveSkillsToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :skills, :string
  end
end
