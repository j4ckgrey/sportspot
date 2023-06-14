class Club < ApplicationRecord
  has_many_attached :photos

  belongs_to :user
  has_many :venues
  geocoded_by :address

  validates :name, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true
  validates :street, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
