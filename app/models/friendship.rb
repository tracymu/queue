class Friendship < ActiveRecord::Base

	belongs_to :owner, :inverse_of => :friendships
	belongs_to :friend, :class_name => 'User'

	after_create :check_reciprocal_friendship


	protected

	def check_reciprocal_friendship
		reciprocal_friendship = Friendship.where(:owner_id => friend_id, :friend_id => owner_id).first

		if reciprocal_friendship
			reciprocal_friendship.update_column(:accepted, true)
			update_column(:accepted, true)
		end
	end

end
