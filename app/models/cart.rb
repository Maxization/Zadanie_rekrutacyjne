class Cart < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :discounts, dependent: :destroy
end
