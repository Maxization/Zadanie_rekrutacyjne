class ItemSerializer < ActiveModel::Serializer
  belongs_to :product
  belongs_to :cart

  attributes :id, :quantity, :product

  def product
    {id: self.object.product.id, name: self.object.product.name ,price: "%.2f"%self.object.product.price}
  end
end
