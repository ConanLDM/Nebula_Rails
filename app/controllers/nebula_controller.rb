class NebulaController < ApplicationController
  def index
    @locations = Location.all
    @location = Location.new
  end

  def show

  end

  def thoughts
    render partial: 'shared/thoughts', locals: { user: @user }
  end
end
