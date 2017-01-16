class AddHourBeginningToServiceType < ActiveRecord::Migration
  def change
    add_column :services, :hour_beginning_service, :time
  end
end
