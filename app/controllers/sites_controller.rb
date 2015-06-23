class SitesController < ApplicationController

  before_action :find_state
  before_action :find_district

  def index
    @sites = @district.sites.all
  end

  def show
    @site = @district.sites.find(params[:id])
  end

  private

  def find_state
    @state = State.find(params[:state_id])
  end

  def find_district
    @district = @state.districts.find(params[:district_id])
  end

end
