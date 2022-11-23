class ParkingLot < ApplicationRecord
  belongs_to :user
  validates :overview, length: { minimum: 6 }
  validates :address, :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
