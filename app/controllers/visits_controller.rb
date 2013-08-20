class VisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create]

	def new
		@visit = @restaurant.visits.new
	end

  def create
    @visit = @restaurant.visits.new params.require(:visit).permit(:rating, :review)
    @visit.user = current_user

     

      # I was trying to delete a 'future visit' once I had added a visit for there.
    # if current_user.future_visits.exists?(:restaurant_id => @restaurant.id)
    # @future_visit.destroy   
    # end


    if @visit.save
      # @future_visit = current_user.future_visits.where(:restaurant_id => @restaurant.id)
      redirect_to restaurant_future_visit_path(@restaurant, future_visit), method: :delete, :notice => "Visit Successfully Saved"  
    
      # redirect_to restaurant_path(@restaurant), :notice => "Visit Successfully Saved"  
    else
      render 'new'
    end
    
  end


  protected
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])    
  end


end

