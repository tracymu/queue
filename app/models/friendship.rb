class Friendship < ActiveRecord::Base

	belongs_to :owner, :inverse_of => :friendships
	belongs_to :friend, :class_name => 'User'

end
