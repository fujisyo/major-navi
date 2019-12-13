class ParksController < ApplicationController
  def new
    @park = Park.new
  end
  def create 
    @park = Park.create(:studium)
  end
end
