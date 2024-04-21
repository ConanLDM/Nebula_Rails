class NebulaeController < ApplicationController
  def index
    @locations = Location.all
    @location = Location.new
  end

  def show
    @nebula = Nebula.new
  end

  def new
    @nebula = Nebula.new
  end

  def create
    @nebula = Nebula.new(nebula_params)
    if @nebula.save
      redirect_to @nebula, notice: 'Nebula was successfully created.'
    else
      Rails.logger.error(@nebula.errors.full_messages.join(', ')) # This logs validation errors
      render :new
    end
  end

  def edit
    @nebula = Nebula.find(params[:id])
  end

  def thoughts
    render partial: 'shared/thoughts', locals: { user: @user }
  end

  private

  def nebula_params
    params.require(:nebula).permit(:name, :distance, :brightness, :galaxy_id)
  end
end
