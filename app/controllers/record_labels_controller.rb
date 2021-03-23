class RecordLabelsController < ApplicationController
  def show
    @record_label = RecordLabel.find(current_user.record_label.id)
    authorize @record_label
  end

  def edit
  end

  def update
  end

  private
end
