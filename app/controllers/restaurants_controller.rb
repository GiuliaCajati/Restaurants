class RestaurantsController < ApplicationController
    #skip_before_action :verify_authenticity_token ?? 
  #before_action :find_taco, only: [:show, :edit, :update, :switch_veg]
  
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    restaurant_name = params["restaurant"]["name"]
    restaurant_rating = params["restaurant"]["rating"].to_i
    restaurant = Restaurant.create(name:restaurant_name, rating: restaurant_rating)
    redirect_to restaurant_path(restaurant.id)
  end

  def edit 
    @restaurant = Restaurant.find(params[:id])
  end

  def update 
    @restaurant = Restaurant.find(params[:id])
    restaurant_name = params["restaurant"]["name"]
    restaurant_rating = params["restaurant"]["rating"].to_i
    restaurant = @restaurant.update(name:restaurant_name, rating: restaurant_rating)
    redirect_to restaurant_path(@restaurant)
  end 

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end 


end

#  private
# def taco_params
#   params.require(:taco).permit(:name, :price, :vegetarian)
# end

# def find_taco
#   @taco = Taco.find(params[:id])
# end