class AddColumnPlaceToService < ActiveRecord::Migration
  def change
    add_column :services, :place, :string
  end
end
