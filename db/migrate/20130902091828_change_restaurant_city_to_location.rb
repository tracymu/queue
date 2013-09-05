class ChangeRestaurantCityToLocation < ActiveRecord::Migration
  def change

  	rename_column :restaurants, :city, :location

  end
end
