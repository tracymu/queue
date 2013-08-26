class SearchesController < ApplicationController
	
	def new
	end


	def search
		@users = User.where("name like?", "%#{params[:search]}%".downcase)
		@restaurants = Restaurant.where("name like?", "%#{params[:search]}%".downcase)
	end




end