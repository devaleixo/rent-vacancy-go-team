class AddCoordinatesToParkingLots < ActiveRecord::Migration[7.0]
  def change
    add_column :parking_lots, :latitude, :float
    add_column :parking_lots, :longitude, :float
  end
end
