class Payment < ActiveRecord::Base
  belongs_to :loan
  validates_numericality_of :amount, presence: true
  validates :status, presence: true
end
