class RecordLabelsController < ApplicationController
  def show
    @record_label = RecordLabel.find(current_user.record_label.id)
    authorize @record_label
    @releases = policy_scope(Release)
  end

  def new
    @record_label = RecordLabel.new
    authorize @record_label
  end

  def create
  end

  def edit
  end

  def update
  end

  private
end
