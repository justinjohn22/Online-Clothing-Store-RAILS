class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.string :size
      t.string :color
      t.integer :quantity
      t.integer :product_id
      t.integer :order_id
      t.decimal :total
      t.decimal :unit_price

      t.timestamps
    end
  end
end
