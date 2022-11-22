class ReservationsController < ApplicationController
  def new
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @reservation = Reservation.new
  end

  def create
  end

  def destroy
  end
end
