class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  belongs_to :club_owner, class_name: 'User', foreign_key: 'club_owner_id'
  validates :name, presence: true
end
