class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :visits
  has_many :future_visits
  
  has_many :friendships, :foreign_key => :owner_id
  has_many :friends, :through => :friendships

  def friendship_status_with(user)
  	friendship = friendships.where(:friend_id => user.id).first
  	friendship.accepted? ? "Friend" : "Friendship pending"
  end

  def to_s
    name
  end
  
end
