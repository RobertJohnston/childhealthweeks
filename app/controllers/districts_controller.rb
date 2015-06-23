class DistrictsController < ApplicationController

  def index
    @district = District.all
  end

  def show
    @district = District.find(params[:id])
  end
end
