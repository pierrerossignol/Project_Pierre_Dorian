class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.belongs_to :user
      t.belongs_to :service_type
    end
  end
end
