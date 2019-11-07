class Province < ApplicationRecord
	has_many :customers

	validates :code, presence: true
end
