class MapsController < ApplicationController
  def index
  end
  def new
    @map = Map.new
  end
  def create   
    Map.create(maps_params)
    redirect_to "/"
  end

  private

  def maps_params
    params.require(:map).permit(:prefecture,:stadium)
  end
end
