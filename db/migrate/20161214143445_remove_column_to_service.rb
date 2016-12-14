class RemoveColumnToService < ActiveRecord::Migration
  def change
    remove_column :services, :time_spent, :number
  end
end
