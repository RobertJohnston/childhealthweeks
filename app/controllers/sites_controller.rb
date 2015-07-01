class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def show_complete
    @site.calculate_complete
    @result_report = calculate_program_complete
  end

end
