class Spaceship < ApplicationRecord
  belongs_to :user
  # has_many :users, through: :bookings
  has_many :bookings
  has_attachments :photos, maximum: 4
  # Google Maps
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # validates :name, uniqueness: true, presence: true
  # validates :address, presence: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :description, presence: true
end
