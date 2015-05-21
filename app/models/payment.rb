class Payment < ActiveRecord::Base
  belongs_to :loan
  validates_numericality_of :amount, presence: true
  validates :loan_id, presence: true
  validates_associated :loan
end
