class AddDetailsToService < ActiveRecord::Migration
  def change
    add_column :services, :participants, :integer
    add_column :services, :confirmation, :boolean
    add_column :services, :event_at, :datetime
  end
end
