class Visit < ActiveRecord::Base
	
	validates :rating, :presence => true


	belongs_to :restaurant
	belongs_to :user


	# after_save :update_average_rating


#### I couldn't make this feature work yet without breaking other parts ####

	# def update_average_rating 
	# 	average_rating = Visit.average(:rating, :conditions => [ 'restaurant_id = ?', restaurant_id ] )
 #    restaurant = Restaurant.find(:first, restaurant_id)
 #    restaurant.average_rating = average_rating
 #    restaurant.save
	# 	end


	def to_s
		restaurant_id
	end
end


