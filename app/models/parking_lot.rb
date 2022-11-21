class ParkingLot < ApplicationRecord
  belongs_to :user
  validates :overview, length: { minimum: 6 }
  validates :address, :price, presence: true
end
