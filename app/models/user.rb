class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :clubs
  has_many :venues, through: :clubs

  has_many :bookings
  has_many :reviews

  def is_user?
    roles.include?("user")
  end

  def is_owner?
    roles.include?("owner")
  end

  def is_admin?
    roles.include?("admin")
  end
end
