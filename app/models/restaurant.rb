class Restaurant < ActiveRecord::Base
	validates :name,  :presence => true

	has_many :visits
	has_many :future_visits
	
	before_validation :fix_url_protocol



	# def average_rating
	# 	@restaurant.average_rating = @restaurant.visits.average(:rating).to_s
	# 	@restaurant.save
	# end


	protected

	def fix_url_protocol
		unless self.website[/^http:\/\//] || self.website[/^https:\/\//]
			self.website = 'http://' + self.website
		end
	end

end
