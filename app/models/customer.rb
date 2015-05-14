class Customer < ActiveRecord::Base
	has_many :loans
	validates :first_name, presence: :true
  	validates_numericality_of :age, presence: true
end
