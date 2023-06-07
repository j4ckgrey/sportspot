class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    user.is_user?
  end

  def edit?
    user.is_user? || user.is_admin? || user.is_owner?
  end

  def update?
    edit?
  end

  def destroy?
    user.is_admin? || user.is_user?
  end
end
