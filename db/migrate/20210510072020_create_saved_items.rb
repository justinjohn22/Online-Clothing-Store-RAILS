class CreateSavedItems < ActiveRecord::Migration[5.1]
  def change
    create_table :saved_items do |t|
      t.integer :productID
      t.integer :saved_list_id
      t.integer :quantity 
      t.timestamps
    end
  end
end
