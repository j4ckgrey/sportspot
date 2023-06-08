class Review < ApplicationRecord
  belongs_to :venue
  belongs_to :user

  # validates :title, presence: true
end
