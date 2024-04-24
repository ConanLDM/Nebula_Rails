class SupernovaeController < ApplicationController

  def index
    @supernova = Supernova.all
  end

  def show

  end

  def new
    @supernova = Supernova.new
  end

  def create
    @supernova = Supernova.new(supernova_params)

    if @supernova.save
      redirect_to supernovae_path, notice: "This Supernova has been created"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @supernova.update(supernova_params)
      redirect_to supernovae_path, notice: "The Supernova was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def edit

  end

  def set_supernova
    @supernova = Supernova.find(params[:id])
  end

  def supernova_params
    params.require(:supernova).permit(:name)
  end
end
