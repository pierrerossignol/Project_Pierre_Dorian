class ModifyHourServiceToService < ActiveRecord::Migration
  def change
    change_column :services, :hour_beginning_service, :integer
  end
end
