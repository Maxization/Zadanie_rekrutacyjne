class Item < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :product_id, uniqueness: true
  validates :quantity, numericality: { greater_than_or_equal_to: 0 }
end
