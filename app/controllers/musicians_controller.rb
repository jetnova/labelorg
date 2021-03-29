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
    dob = Date.new(musician_params[:"dob(1i)"], musician_params[:"dob(2i)"], musician_params[:"dob(3i)"])
    @musician = Musician.new(name: params[:musician][:name], dob: params[:musician][:dob], cob: params[:musician][:cob])
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
    params.require(:musician).permit(:name, :"dob(1i)", :"dob(2i)", :"dob(3i)", :cob)
  end
end
