class AddDateToServiceType < ActiveRecord::Migration
  def change
    add_column :services, :date_service, :date
  end
end
