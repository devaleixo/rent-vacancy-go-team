class AddEndReservationDate < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :end_reservation_date, :date
  end
end
