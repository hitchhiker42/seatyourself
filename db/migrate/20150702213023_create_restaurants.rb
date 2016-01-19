class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :price_range
      t.string :address
      t.text :summary

      t.timestamps null: false
    end
  end
end
