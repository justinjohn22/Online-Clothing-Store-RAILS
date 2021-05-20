class CreateTwitterUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :twitter_users do |t|
      t.belongs_to :customer, foreign_key: true
      t.string :name
      t.string :username
      t.string :image
      t.string :token
      t.string :secret

      t.timestamps
    end
  end
end
