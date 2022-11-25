class Reservation < ApplicationRecord
  belongs_to :parking_lot
  belongs_to :user
  validates :reservation_date, :end_reservation_date, presence: true, uniqueness: { scope: :parking_lot }
end
