class Order < ApplicationRecord
belongs_to :Customer
validates :order_date, presence: true
before_create :set_order_date
before_save :set_fulfilled 
has_many :order_details
end

def set_order_date
	self.order_date = Date.today
end

def set_fulfilled
	if self.paid_date?
		self.fulfilled = true
	end
end