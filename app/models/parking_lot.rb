class ParkingLot < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photos
  validates :overview, length: { minimum: 6 }
  validates :address, :price, presence: true
end
