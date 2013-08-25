class Restaurant < ActiveRecord::Base
	validates :name,  :presence => true

	has_many :visits
	has_many :future_visits
	
	# def average_rating
	# 	@restaurant.average_rating = @restaurant.visits.average(:rating).to_s
	# 	@restaurant.save
	# end


end
