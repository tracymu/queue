class SearchesController < ApplicationController
	
	def new
	end


	def search
		@users = User.where("name like?", "%#{params[:search]}%".upcase)
		@restaurants = Restaurant.where("name like?", "%#{params[:search]}%".upcase)
	end




end