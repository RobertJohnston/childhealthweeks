class DistrictsController < ApplicationController

  def index
    @district = District.all
  end

  def show
    @state = State.find(params[:state_id])
    @district = @state.districts.find(params[:id])

    #@site = @state.district.sites.find(params[:id])

  end
end
