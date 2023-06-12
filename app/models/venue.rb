class Venue < ApplicationRecord
  has_many_attached :photos

  belongs_to :club
  has_many :bookings
  has_many :reviews, through: :bookings
end
