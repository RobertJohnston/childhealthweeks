class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @stock_reports_per_day = @site.stock_reports_per_day
  end

end
