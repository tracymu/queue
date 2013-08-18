class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.string :city

      t.timestamps
    end
  end
end
