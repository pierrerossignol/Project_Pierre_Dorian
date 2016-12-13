class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :surname
      t.integer :age
      t.string :postecode
      t.string :email
      t.string :job
      t.string :skills

      t.timestamps null: false
    end
  end
end
