class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @stock_reports_per_day = @site.stock_reports_per_day
    @vit_red = @site.average_complete_reporting(:vitamin_a_red)
    @vit_blue = @site.average_complete_reporting(:vitamin_a_blue)
    @deworm = @site.average_complete_reporting(:deworming)
    @iron = @site.average_complete_reporting(:iron_folate)
  end

end
