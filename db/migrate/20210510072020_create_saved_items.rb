class CreateSavedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_items do |t|
      t.integer :product_id
      t.integer :saved_list_id
      t.timestamps
    end
  end
end
