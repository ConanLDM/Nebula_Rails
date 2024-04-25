class AstroImagesController < ApplicationController

  def new
    @astro_image = AstroImage.new
  end

  def create
    @astro_image = AstroImage.new(astro_image_params)
    if @astro_image.save
      redirect_to astro_images_path, notice: 'Image uploaded successfully!'
    else
      render :new
    end
  end

  def index
    @astro_images = AstroImage.all
  end

  private

  def astro_image_params
    params.require(:astro_image).permit(:title, :description, :image)
  end
end
