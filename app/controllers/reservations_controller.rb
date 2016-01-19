class ReservationsController < ApplicationController

  def index
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    
      @reservation = Reservation.new(reservation_params)
      @reservation.user_id = session[:user_id]
      @reservation.restaurant_id = params[:restaurant_id]
    
    if @reservation.save 
       render 'create'
    else
      render '/restaurants/show'
    end
  end

  def show
    @reservations = Reservation.find(params[:id])
  end

  def destroy
    @reservations = Reservation.find(params[:id])
    @reservations.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:party_size , :date_time)
  end

end
