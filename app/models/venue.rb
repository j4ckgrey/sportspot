class Venue < ApplicationRecord
  has_many_attached :photos

  belongs_to :club
  has_many :reviews
  has_many :bookings
end
