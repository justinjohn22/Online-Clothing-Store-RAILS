class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :collection_type
      t.string :image_url
      t.date :date_arrived
      t.timestamps
    end
  end
end
