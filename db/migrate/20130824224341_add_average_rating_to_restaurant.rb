class AddAverageRatingToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :average_rating, :integer
  end
end
