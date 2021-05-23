class CreateFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :filters do |t|
      t.boolean :all
      t.boolean :outdoors
      t.boolean :underwear
      t.boolean :formal
      t.boolean :summer
      t.boolean :indoors
      t.boolean :grey
      t.boolean :red
      t.boolean :brown
      t.boolean :blue
      t.boolean :green
      t.boolean :black
      t.boolean :white
      t.string :size
      t.timestamps
    end
  end
end
