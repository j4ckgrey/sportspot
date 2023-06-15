class ClubPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user.is_owner? || user.is_admin?
  end

  def edit?
    update?
  end

  def update?
    user.is_owner? || user.is_admin?
  end

  def destroy?
    user.is_admin?
  end
end
