class Spaceship < ApplicationRecord
  belongs_to :user
  # has_many :users, through: :bookings
  has_many :bookings
  has_attachments :photos, maximum: 4

  # validates :name, uniqueness: true, presence: true
  # validates :address, presence: true
  # validates :price, presence: true, numericality: { only_integer: true }
  # validates :description, presence: true
  def product_params
    params.require(:product).permit(:name, :address, :price, :description, :speed, :weaponry, photos: [])
  end
end
