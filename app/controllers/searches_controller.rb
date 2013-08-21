class SearchesController < ApplicationController
	
	def new
	end


	def search
		@users = User.where("name like?", "%#{params[:search]}%")
		@restaurants = Restaurant.where("name like?", "%#{params[:search]}%")
	end




end