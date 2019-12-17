class MapsController < ApplicationController
  def index
  end
  def new
    @map = Map.new
    @area = Area.new
  end
  def create   
    Map.create(maps_params)
    # Area.create(area_params)
    redirect_to "/"
  end

  private

  def maps_params
    params.require(:map).permit(:prefecture,:stadium).merge(user_id: current_user.id)
  end
  # def area_params
  #   params.require(:area).permit(:area)
  # end
end
