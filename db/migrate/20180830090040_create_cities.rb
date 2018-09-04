class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.references :country
      t.integer :capacity
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude 

      t.timestamps
    end
  end
end
