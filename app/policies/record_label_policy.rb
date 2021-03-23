class RecordLabelPolicy < ApplicationPolicy
  def show?
    user.record_label == record
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
