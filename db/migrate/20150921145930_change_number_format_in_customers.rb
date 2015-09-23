class ChangeNumberFormatInCustomers < ActiveRecord::Migration
  def change
    change_table :customers do |t|
      t.change :mobile_number, :string
      t.change :telephone_number, :string
    end
  end
end
