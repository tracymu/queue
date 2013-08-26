class SearchesController < ApplicationController
	
	def new
	end


	def search
		@users = User.where("name ILIKE?", "%#{params[:search]}%")
		@restaurants = Restaurant.where("name ILIKE?", "%#{params[:search]}%")
	end




end