class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_many :reviews
  validates :date, presence: true
  validates :time, presence: true

  enum status: { pending: 0, confirmed: 1, declined: 2 }
end
