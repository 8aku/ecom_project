class Product < ApplicationRecord
  belongs_to :dreamtype

   mount_uploader :image, ImageUploader

  validates :description, presence: true
  validates :name, presence: true
  validates :stock, presence: true
  validates :price_per_unit, presence: true
end
