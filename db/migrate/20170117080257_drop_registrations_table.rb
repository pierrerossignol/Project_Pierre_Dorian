class DropRegistrationsTable < ActiveRecord::Migration
  def change
    drop_table :registrations
  end
end
