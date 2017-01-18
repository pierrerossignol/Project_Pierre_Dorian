class RemoveSkillsToService < ActiveRecord::Migration
  def change
    remove_column :services, :skills, :string
  end
end
