class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :quantity, default: 1 
      t.references :cart, foreign_key: true

      t.timestamps
    end
  end
end
