class VisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create]

	def new
		@visit = @restaurant.visits.new
	end

  def create
    @visit = @restaurant.visits.new params.require(:visit).permit(:rating, :review)
    @visit.user = current_user
       #Here if there WAS an instance in future_visits, we want to remove it now, right?

    if @visit.save
      redirect_to restaurant_path(@restaurant), :notice => "Visit Successfully Saved"  
    else
      render 'new'
    end
    
  end


  protected
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])    
  end


end

