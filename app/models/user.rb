class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

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
