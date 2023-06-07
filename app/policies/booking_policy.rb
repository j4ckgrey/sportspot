class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    booking.user == user
  end

  def edit?
    booking.user == user || user.is_admin? || user.is_owner?
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
