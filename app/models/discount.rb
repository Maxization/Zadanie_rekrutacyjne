class Discount < ApplicationRecord
  KINDS = %w[set extra].freeze

  has_many :products, dependent: :nullify
  belongs_to :cart

  validates :name, presence: true, uniqueness: true
  validates :kind, inclusion: { in: KINDS }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :products, :presence => true
end
