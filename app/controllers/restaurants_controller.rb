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
		@restaurant = Restaurant.new params.require(:restaurant).permit(:name, :website, :city	)

		if @restaurant.save
			redirect_to new_restaurant_future_visit_path(@restaurant)
						#somehow in here - if you create a restaurant, it should go in your queue, and so shoudl somehow 
		#create a future_visits entry. So future_visits_controller#create ...somehow....
			#@future_visit = Restaurant.future_visit.new params.require(:restaurant).permit(:)
			# redirect_to restaurant_path(@restaurant), :notice => "Restaurant successfully added"			
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
