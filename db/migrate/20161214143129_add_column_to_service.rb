class AddColumnToService < ActiveRecord::Migration
  def change
    add_column :services, :participants_number, :integer
  end
end
