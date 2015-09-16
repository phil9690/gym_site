class Customer < ActiveRecord::Base

STAFF_LOG = [ " ", "appointment made", "no answer", "no lead", "message left", "text sent", "email sent" ]

EVENT_TYPES = [ "Attendance", "Attitude/Behaviour", "Interviewing Issue", "Late Break", "Mobile Phone", "Spoken To By Management", "Suspension", "Timekeeping", "Other" ]

  before_save { first_name.downcase! }
  before_save { last_name.downcase! }
  before_save { address_line_1.downcase! }
  before_save { address_line_2.downcase! }
  before_save { address_line_2.downcase! }

  validates :first_name, :last_name, :address_line_1, :post_code, presence: true

  has_many :appointments
  has_many :users, through: :appointments

end
