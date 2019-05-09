class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :name, index: { unique: true }
      t.string :kind
      t.float :price
      t.references :cart, foreign_key: true
      
      t.timestamps
    end
  end
end
