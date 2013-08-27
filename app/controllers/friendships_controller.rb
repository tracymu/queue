class FriendshipsController < ApplicationController
	
  def create
    @user = User.find(params[:user_id])    
    current_user.friends << @user
	  redirect_to user_path(@user)
	end

end