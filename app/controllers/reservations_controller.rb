class ReservationsController < ApplicationController
  def new
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @parking_lot = ParkingLot.find(params[:parking_lot_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.parking_lot = @parking_lot
    @reservation.user = current_user
    @reservation.save
    authorize @reservation
    if @reservation.save == true
      redirect_to parking_lots_path
    else
      redirect_to parking_lot_path(@parking_lot)
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to myreservations_parking_lots_path, status: :see_other
  end

  private

  def reservation_params
    params.require(:reservation).permit(:reservation_date)
  end
end
