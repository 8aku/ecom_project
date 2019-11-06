class Dreamtype < ApplicationRecord

	has_many :products
	validates :horror_rating, numericality: { less_than_or_equal_to: 10,  only_integer: true }
	validates :dreamtype, presence: true

	def display_name 
		dreamtype
	end
end
