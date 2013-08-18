class UsersController < ApplicationController

	def search
    @users = User.where("name like?", "%#{params[:search]}%")
  end

  
  def show
	 	@user = User.find(params[:id])
  end


end
