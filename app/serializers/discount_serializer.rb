class DiscountSerializer < ActiveModel::Serializer
  has_many :products
  belongs_to :cart

  attributes :id, :kind, :name, :product_ids

  def attributes(*args)
    hash = super
    if object.kind == "set"
      hash[:price] = object.price
    else
      hash[:count] = object.count
    end
    hash
  end
end
