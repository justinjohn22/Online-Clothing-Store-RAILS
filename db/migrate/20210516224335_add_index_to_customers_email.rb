class AddIndexToCustomersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :customers, :email, unique: true
  end
end
