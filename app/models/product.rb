class Product < ApplicationRecord
  belongs_to :dreamtype

  validates :description, presence: true
  validates :stock, presence: true
  validates :price_per_unit, presence: true
end
