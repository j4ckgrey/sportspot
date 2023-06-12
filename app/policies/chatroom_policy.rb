class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    record.club_owner == user || record.creator == user
  end

  def new?
    true
  end

  def create?
    true
  end

  def destroy?
    record.creator == user
  end
end
