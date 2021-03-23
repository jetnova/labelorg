class PlaylistPolicy < ApplicationPolicy
  def show?
    user.record_label == playlist.record_label
  end

  class Scope < Scope
    def resolve
      scope.where(record_label: user.record_label)
    end
  end
end
