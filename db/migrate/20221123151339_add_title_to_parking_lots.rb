class AddTitleToParkingLots < ActiveRecord::Migration[7.0]
  def change
    add_column :ParkingLots, :title, :string
  end
end
