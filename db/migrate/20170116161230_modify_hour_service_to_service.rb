class ModifyHourServiceToService < ActiveRecord::Migration
  def change
    remove_column :services, :hour_beginning_service
    add_column :services, :hour_beginning_service, :integer
  end
end
