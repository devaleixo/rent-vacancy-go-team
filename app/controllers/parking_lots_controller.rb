class ParkingLotsController < ApplicationController
  def index
    @parking_lots = ParkingLot.all
  end

  def show
    @parking_lot = ParkingLot.find(params[:id])
  end

  def new
    @parking_lot = ParkingLot.new
  end

  def create
    @parking_lot = ParkingLot.new(params_parkinglot)
    @parking_lot.save
    redirect_to parking_lots_path
  end

  def edit
    @parking_lot = ParkingLot.find(params[:id])
  end

  def update
    @parking_lot = ParkingLot.find(params[:id])
    @parking_lot.update(params_parkinglot)
    redirect_to parking_lot_path(@parking_lot)
  end

  def destroy
    @parking_lot = ParkingLot.find(params[:id])
    @parking_lot.destroy
    redirect_to parking_lots_index_path, status: :see_other
  end

  def mylots
    @parking_lots = ParkingLot.where(user_id: params[:id])
  end

private

def params_parkinglot
end

end
