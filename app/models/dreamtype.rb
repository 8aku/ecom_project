class Dreamtype < ApplicationRecord
validates :horror_rating, numericality: { less_than_or_equal_to: 10,  only_integer: true }
validates :dreamtype, presence: true
end
