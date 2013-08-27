class SearchesController < ApplicationController
	
	def new
		
	end


	def search
		@users = User.where("name ilike?", "%#{params[:search]}%")
		@restaurants = Restaurant.where("name ilike?", "%#{params[:search]}%")
	end




end