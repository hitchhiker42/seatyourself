class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reservation = Reservation.new
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  def create 
    @restaurant = Restaurant.new
    @restaurant.save
  end
end
