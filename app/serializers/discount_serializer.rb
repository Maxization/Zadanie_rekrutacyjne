class DiscountSerializer < ActiveModel::Serializer
  has_many :products
  belongs_to :cart

  attributes :id, :kind, :name, :product_ids
end
