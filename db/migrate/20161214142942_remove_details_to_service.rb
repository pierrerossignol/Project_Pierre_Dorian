class RemoveDetailsToService < ActiveRecord::Migration
  def change
    remove_column :services, :participants, :number
  end
end
