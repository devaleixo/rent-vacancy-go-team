class ParkingLot < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many_attached :photos
  has_many :reservations
  validates :overview, length: { minimum: 6 }
  validates :address, :price_per_day, :title, presence: true
end
