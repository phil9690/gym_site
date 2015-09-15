class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :post_code
      t.string :country
      t.integer :telephone_number
      t.integer :mobile_number
      t.string :email

      t.timestamps null: false
    end
  end
end
