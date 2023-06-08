# app/policies/review_policy.rb
class ReviewPolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  def update?
    user.present? && user == record.user
  end

  def destroy?
    user.present? && user == record.user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
