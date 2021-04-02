class MusiciansController < ApplicationController
  def index
    if params[:query].present?
      @musicians = policy_scope(Musician).musicians_search(params[:query]).order(name: :asc)
    else
      skip_policy_scope
    end
  end

  def new
    @musician = Musician.new
    authorize @musician
  end

  def create
    @musician = Musician.new(musician_params)
    authorize @musician
    if @musician.save
      redirect_to musicians_path, notice: "Musician Record Created"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  private

  def musician_params
    params.require(:musician).permit(:name, :dob, :cob, :ipicae)
  end
end
