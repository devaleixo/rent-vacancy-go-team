class RenamePriceToPricePerDay < ActiveRecord::Migration[7.0]
  def change
    rename_column :parking_lots, :price, :price_per_day
  end
end
