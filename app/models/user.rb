class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :clubs
  has_many :reviews
  has_many :venues, through: :clubs
  has_many :created_chatrooms, class_name: 'Chatroom', foreign_key: 'creator_id'
  has_many :clubroom_chatrooms, class_name: 'Chatroom', foreign_key: 'club_owner_id'

  has_one_attached :photo

  def is_user?
    roles.include?("user")
  end

  def is_owner?
    roles.include?("owner")
  end

  def is_admin?
    roles.include?("admin")
  end

  def is_creator_chatowner?
    user.creator? || user.club_owner?
  end
end
