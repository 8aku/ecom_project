class Customer < ApplicationRecord
	belongs_to :Province

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :email, presence: true
	
	canadian_postal_code = /\A[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}[ -]?\\d{1}[A-Z]{1}\\d{1}\z/
	validates :postal_code, format: { with: canadian_postal_code }
end
