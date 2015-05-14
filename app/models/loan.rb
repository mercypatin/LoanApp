class Loan < ActiveRecord::Base
  belongs_to :customer
  has_many :payments
  validates :amount, presence: :true
  validates :currency, presence: true
  validates_numericality_of :amount
end
