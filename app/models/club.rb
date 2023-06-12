class Club < ApplicationRecord
  has_many_attached :photos

  belongs_to :user
  has_many :venues
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
