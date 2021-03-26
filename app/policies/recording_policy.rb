class RecordingPolicy < ApplicationPolicy
  def show?
    record.record_deals.each do |deal|
      return true if deal.record_label == user.record_label
    end
  end

  def update?
    user.admin?
  end

  class Scope < Scope
    def resolve
      scope.joins(:record_deal_recordings, :record_deals)
    end
  end
end
