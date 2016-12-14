class AddColumTimespentToService < ActiveRecord::Migration
  def change
    add_column :services, :time_spent, :float
  end
end
