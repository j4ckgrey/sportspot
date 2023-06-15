class Venue < ApplicationRecord
  has_many_attached :photos

  belongs_to :club
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
