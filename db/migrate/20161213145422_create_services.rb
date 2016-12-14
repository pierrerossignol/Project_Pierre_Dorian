class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :participants_name
      t.string :name
      t.integer :time_spent
      t.text :description
      t.belongs_to :service_type

      t.timestamps null: false
    end
  end
end
