class Discount < ApplicationRecord
  KINDS = %w[set extra].freeze

  has_many :product_discounts, dependent: :destroy
  has_many :products, through: :product_discounts
  #has_and_belongs_to_many :products, dependent: nullify
  #has_many :products, dependent: :nullify
  belongs_to :cart

  #validates :count, numericality: { greater_than_or_equal_to: 0 }
  validates :name, presence: true, uniqueness: true
  validates :kind, inclusion: { in: KINDS }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :products, :presence => true
end
