class CreateDiscounts < ActiveRecord::Migration[5.2]
  def change
    create_table :discounts do |t|
      t.string :name, index: { unique: true }
      t.string :kind
      t.float :price, default: 0
      t.integer :count, default: 0
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
