class FutureVisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create, :destroy, :recommend]

  def new
		@future_visit = @restaurant.future_visits.new
    recommend 
	end


  def recommend

    @future_visit = @restaurant.future_visits.new 

    @user = User.find(params[:user_id])

    @future_visit.user = @user
    if @future_visit.save
      redirect_to restaurant_path(@restaurant), :notice => "Restaurant successfully added to your Queue"  
    else
      render 'restaurant/show'
    end

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
    @future_visit = FutureVisit.find(params[:id])
    @future_visit.destroy
    redirect_to restaurant_path(@restaurant)
  end 


  protected
  
  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])    
  end


end
