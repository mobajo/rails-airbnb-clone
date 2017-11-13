class Spaceship < ApplicationRecord
  belongs_to :user
  # has_many :users, through: :bookings
  has_many :bookings

  # validates :name, uniqueness: true, presence: true
  # validates :address, presence: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :description, presence: true
end
