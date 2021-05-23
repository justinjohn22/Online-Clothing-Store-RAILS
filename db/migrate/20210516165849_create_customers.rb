class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.boolean :subscription  
      t.boolean :given_rating
      t.timestamps
    end
  end
end
