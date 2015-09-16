class AddStaffLogToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :staff_log, :string
  end
end
