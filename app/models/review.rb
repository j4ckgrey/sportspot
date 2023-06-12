class Review < ApplicationRecord
  belongs_to :booking

  # validates :title, presence: true
end
