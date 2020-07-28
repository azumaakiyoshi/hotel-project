class ReservationsController < ApplicationController
def new
  @hotel = Hotel.find(params[:hotel_id])
  @reservation = @hotel.reservations.build
end

def create
  @hotel = Hotel.find(params[:hotel_id])
  @reservation = Reservation.new(reservation_params)
  if @reservation.save
    redirect_to hotel_reservation_path(@hotel,@reservation)
  end
end

def reservation_params
  params.require(:reservation).permit(:name, :checkin, :checkout, :people, :hotel_id)
end
def show
  @hotel = Hotel.find(params[:hotel_id])
  @reservation = Reservation.find(params[:id])
end
end
