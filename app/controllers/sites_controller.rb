class SitesController < ApplicationController

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @stock_reports_per_day = @site.stock_reports_per_day
    # @complete_stock_report_vit_a_red = @site.stock_report_per_day(start_date, end_date, stock_item)
    # @complete_stock_report_vit_a_blue = @site.stock_report_per_day(start_date, end_date, stock_item)
    # @complete_stock_report_deworming = @site.stock_report_per_day(start_date, end_date, stock_item)
    # @complete_stock_report_iron_folate = @site.stock_report_per_day(start_date, end_date, stock_item)
  end

end
