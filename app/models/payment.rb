class Payment < ActiveRecord::Base
  belongs_to :loan
  validates_numericality_of :amount, presence: true
end
