class Product < ApplicationRecord
  belongs_to :dreamtype
  has_many :order_details

   mount_uploader :image, ImageUploader

  validates :description, presence: true
  validates :name, presence: true
  validates :stock, presence: true
  validates :price_per_unit, presence: true

  paginates_per 4

end
