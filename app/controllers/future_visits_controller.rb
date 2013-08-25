class FutureVisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create, :destroy, :recommend]


## I have this here, to show a new page, which will have a list of users I need to pick from.

  def new
		@future_visit = @restaurant.future_visits.new
    #recommend 
    create
	end

  def index


  end


  # def recommend

  #   @future_visit = @restaurant.future_visits.new 

  #   @user = User.find(params[:user_id])

  #   @future_visit.user = @user
  #   if @future_visit.save
  #     redirect_to restaurant_path(@restaurant), :notice => "Recommendation sent"  
  #   else
  #     render 'restaurant/show'
  #   end

  # end


  def create
    @future_visit = @restaurant.future_visits.new 
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
