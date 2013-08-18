class Restaurant < ActiveRecord::Base
	validates :name,  :presence => true

	has_many :visits
	has_many :future_visits
	
end
