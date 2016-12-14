class RemoveSurnameToServiceType < ActiveRecord::Migration
  def change
    remove_column :service_types, :surname
    remove_column :service_types, :age
    remove_column :service_types, :postecode
    remove_column :service_types, :skills
    remove_column :service_types, :email
    remove_column :service_types, :job
  end
end
