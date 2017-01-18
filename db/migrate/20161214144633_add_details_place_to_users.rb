class AddDetailsPlaceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :postal_code, :string
    add_column :users, :age, :integer
    add_column :users, :job, :string
    add_column :users, :skills, :string
    add_column :users, :rating, :string
  end
end
