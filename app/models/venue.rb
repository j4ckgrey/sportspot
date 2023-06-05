class Venue < ApplicationRecord
  belongs_to :club
  has_many :reviews
  has_many :bookings
end
