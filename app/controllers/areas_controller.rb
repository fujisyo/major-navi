class AreasController < ApplicationController
  def new
    @area = Area.new
  end
  def create
    Area.create(area_params)
  end
  private
  def area_params
    params.require(:area).permit(:area)
  end
end
