class RestaurantsController < ApplicationController

	before_action :find_restaurant, :only => [:show, :edit, :update, :destroy] 
	before_action :get_restaurants, :only => [:index, :list]


	def index
		
		
	end


	def list

	end


	def new
		@restaurant = Restaurant.new
	end


	def create
		@restaurant = Restaurant.new params.require(:restaurant).permit(:name, :website, :city)

		if @restaurant.save
			redirect_to restaurant_path(@restaurant)
		else
			render 'new'	
		end

	end


	def show

	end


  protected

  def permitted_attributes
    params.require(:restaurant).permit(:name, :website, :city)
  end


  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  def get_restaurants
  	@restaurants = Restaurant.all	
  end


end
