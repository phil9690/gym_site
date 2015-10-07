class Customer < ActiveRecord::Base

  require 'csv'

STAFF_LOG = [ " ", "appointment made", "no answer", "blowout", "message left", "email sent", "converted", "not now", "spoken to" ]

  before_save { first_name.downcase! }
  before_save { last_name.downcase! }
  before_save { address_line_1.downcase! }
  before_save { address_line_2.downcase! }
  before_save { address_line_2.downcase! }

  validates :first_name, :last_name, presence: true
  validates :mobile_number, length: { is: 11 }, allow_blank: :true
  validates :post_code, length: { in: 5..7 }, allow_blank: :true

  has_many :appointments, dependent: :destroy
  has_many :users, through: :appointments

  def self.search(search)
    scope = all
    scope = scope.where("first_name like ?", "%#{search[0]}%") unless search[0].empty?
    scope = scope.where("last_name like ?", "%#{search[1]}%") unless search[1].empty?
    scope = scope.where("telephone_number like ?", "%#{search[2]}%") unless search[2].empty?
    scope = scope.where("mobile_number like ?", "%#{search[3]}%") unless search[3].empty?
    scope = scope.where("staff_log like ?", "%#{search[4]}%") unless search[4].empty?
    scope = scope.where("address_line_1 like ?", "%#{search[5]}%") unless search[5].empty?
    scope = scope.where("dob like ?", "%#{search[6]}%") unless search[6].empty?
    scope
  end

  def self.to_csv(options = {})
      CSV.generate(options) do |csv|
        all.each do |customer|
          unless customer.staff_log == "converted"
            if customer.mobile_number.present?
              mobile_number = customer.mobile_number[1..-1]
              mobile_number = "44#{mobile_number}"
              csv << [mobile_number]
            end
          end
        end
      end
  end


end
