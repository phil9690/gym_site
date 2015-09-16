class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :customer, index: true
      t.belongs_to :user, index: true
      t.datetime :appointment_date

      t.timestamps null: false
    end
  end
end
