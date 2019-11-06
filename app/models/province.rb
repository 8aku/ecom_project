class Province < ApplicationRecord
	has_many :customers

	validates :code, presence: true
	validates :tax_percentage, presence: true
end
