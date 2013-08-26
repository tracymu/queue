class FutureVisitsController < ApplicationController

  before_action :find_restaurant, :only => [:new, :create, :destroy, :recommend]


## I have this here, to show a new page, which will have a list of users I need to pick from.

  def new
		@future_visit = @restaurant.future_visits.new   
	end

  def index


  end


  def create
    @future_visit = @restaurant.future_visits.new 

    if params[:future_visit] && params[:future_visit][:user_id]
      @future_visit.user = User.find(params[:future_visit][:user_id])
      notice = "You've recommended this restaurant to #{@future_visit.user}"
    else
      @future_visit.user = current_user
      notice = "Restaurant successfully added to queue"
    end

    if @future_visit.save
      redirect_to restaurant_path(@restaurant), :notice => notice
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
