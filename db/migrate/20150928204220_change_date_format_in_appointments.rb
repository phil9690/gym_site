class ChangeDateFormatInAppointments < ActiveRecord::Migration
  def self.up
    change_column :appointments, :appointment_date, :datetime    
  end

  def self.down
    change_column :appointments, :appointment_date, :date 
  end
end
