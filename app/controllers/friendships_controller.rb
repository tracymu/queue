class FriendshipsController < ApplicationController

 before_action :find_user, :only => [:new, :create]

	def new
		@friendship = @user.friendships.new
    # create
	end


  # def create
  #   @friendship = @user.friendships.new params.require(:visit).permit(:name)
  #   @friendship.user = current_user
  #   if @friendship.save
  #     redirect_to user_path(@user)
  #   else
  #     render 'new'
  #   end
  # end





  protected
  
  def find_user
    @user = User.find(params[:user_id])    
  end


end

