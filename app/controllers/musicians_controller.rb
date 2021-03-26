class MusiciansController < ApplicationController
  def index
    if params[:query].present?
      @musicians = policy_scope(Musician).musicians_search(params[:query]).order(name: :asc)
    else
      skip_policy_scope
    end
  end

  def show
    @musician = Musician.find(params[:id])
    authorize @musician
  end

  def new
    @musician = Musician.new
    authorize @musician
  end

  def create
    @musician = Musician.new(name: params[:musician][:name])
    authorize @musician
    if @musician.save
      redirect_to musician_path(@musician), notice: "Recording Information Updated"
    else
      render :show
    end
  end

  def edit
  end

  def update
  end
end
