class FutureVisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create]

  def new
		@future_visit = @restaurant.future_visits.new
    create 
    #I think there is something wrong with going directly to create from new? Because nothing is getting passed through
	end


  def create
    #It says param not found :future_visit - but I had used this same thing for VisitsController#create?
    @future_visit = @restaurant.future_visits.new 
    #not sure why this bit below doesn't work.
    @future_visit.user = current_user

    if @future_visit.save
      redirect_to restaurant_path(@restaurant), :notice => "Restaurant successfully added to your Queue"  
    else
      render 'restaurant/show'
    end

  end


  def destroy
    @future_visit.destroy
    redirect_to user_path
  end 


  protected
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])    
  end


end
