class User < ActiveRecord::Base

  before_save { first_name.downcase! }
  before_save { last_name.downcase! }
  before_save { username.downcase! }

  validates :first_name,  presence: true
  validates :last_name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }

  has_secure_password
  has_many :appointments
  has_many :customers, through: :appointments

end
