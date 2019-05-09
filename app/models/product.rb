class Product < ApplicationRecord
  has_many :product_discounts, dependent: :destroy
  has_many :discount, through: :product_discounts#, optional:true
  #belongs_to :discount, optional: true
  has_one :item, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
