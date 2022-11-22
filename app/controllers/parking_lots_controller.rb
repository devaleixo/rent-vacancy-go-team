class ParkingLotsController < ApplicationController
  before_action :set_parkinglot, only: %i[show edit update destroy]
  def index
    @parking_lots = policy_scope(ParkingLot)
  end

  def show
    authorize @parking_lot
  end

  def new
    @parking_lot = ParkingLot.new
    authorize @parking_lot
  end

  def create
    @parking_lot = ParkingLot.new(params_parkinglot)
    @parking_lot.user = current_user
    authorize @parking_lot
    @parking_lot.save
    redirect_to parking_lots_path

  end

  def edit
    authorize @parking_lot
  end

  def update
    authorize @parking_lot
    @parking_lot.update(params_parkinglot)
    redirect_to parking_lot_path(@parking_lot)
  end

  def destroy
    authorize @parking_lot
    @parking_lot.destroy
    redirect_to parking_lots_index_path, status: :see_other
  end

  def mylots
    @parking_lots = ParkingLot.where(user_id: params[:id])
  end

private

def params_parkinglot
  params.require(:parking_lot).permit(:address, :price, :overview, :img_url)
end

def set_parkinglot
  @parking_lot = ParkingLot.find(params[:id])
end
end