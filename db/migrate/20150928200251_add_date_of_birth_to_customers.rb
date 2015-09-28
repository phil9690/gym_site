class AddDateOfBirthToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :dob, :date
  end
end
