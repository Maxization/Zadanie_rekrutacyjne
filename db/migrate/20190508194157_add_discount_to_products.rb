class AddDiscountToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :discount, foreign_key: true
  end
end
