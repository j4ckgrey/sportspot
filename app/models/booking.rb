class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :reviews

  enum status: { pending: 0, confirmed: 1, declined: 2 }
end
