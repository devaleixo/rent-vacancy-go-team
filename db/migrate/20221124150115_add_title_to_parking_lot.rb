class AddTitleToParkingLot < ActiveRecord::Migration[7.0]
  def change
    add_column :parking_lots, :title, :string
  end
end
