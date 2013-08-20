class VisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create]

	def new
		@visit = @restaurant.visits.new
	end

  def create
    @visit = @restaurant.visits.new params.require(:visit).permit(:rating, :review)
    @visit.user = current_user

    if @visit.save
      
      # if current_user.future_visits.exists?(:restaurant_id => @restaurant.id)
      #   redirect_to restaurant_future_visit_path(@restaurant, @future_visit), method: :delete 
      # else
        redirect_to restaurant_path(@restaurant), :notice => "Visit Successfully Saved"  
      # end

    else
      render 'new'
    end
    
  end


  protected
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])    
  end


end

