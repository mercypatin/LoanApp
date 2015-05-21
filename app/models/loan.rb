class Loan < ActiveRecord::Base
  belongs_to :customer
  has_many :payments
  validates :amount, presence: :true
  validates :currency, presence: true
  validates :customer_id, presence: true
  validates_numericality_of :amount
  validates_associated :customer
end
