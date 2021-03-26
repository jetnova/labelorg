class ReleasePolicy < ApplicationPolicy
  def show?
    user.record_label == record.record_deal.record_label
  end

  def new?
    user.admin?
  end

  class Scope < Scope
    def resolve
      scope.joins(:record_deal)
    end
  end
end
