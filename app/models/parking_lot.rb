class ParkingLot < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :overview, length: { minimum: 6 }
  validates :address, :price, presence: true
end
