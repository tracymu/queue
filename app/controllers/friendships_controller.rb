class FriendshipsController < ApplicationController
	
  def create
    @user = User.find(params[:user_id])    
    current_user.friends << @user

	  # if Friendship.exists?(:friend_id => current_user.id, :accepted => nil)
	  # 	Friendship.where(:friend_id => current_user.id, :owner_id => @user.id).accepted = true
	  # 	Friendship.where(:friend_id => @user.id, :owner_id => current_user.id).accepted = true
	  #   redirect_to user_path(@user), :notice => "Friendship accepted"  
	  # else 
	    redirect_to user_path(@user), :notice => "Friend request sent"  
	  # end

  end

end