class Appointment < ActiveRecord::Base

  attr_accessor :appointment_time

  belongs_to :user
  belongs_to :customer

  def self.search(search)
    scope = all
    scope = scope.where("appointment_date like ?", "%#{search[0]}%") unless search[0].empty?
    scope
  end


end
