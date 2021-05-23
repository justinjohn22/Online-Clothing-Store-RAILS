class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.text :description
      t.string :filter_description
      t.string :colour 
      t.string :size
      t.string :category
      t.string :collection_type
      t.string :image_url
      t.string :image_url2
      t.string :image_url3
      t.decimal :popularity
      t.date :date_arrived
      t.timestamps
    end
  end
end
