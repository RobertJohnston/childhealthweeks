class StockReportsController < ApplicationController

  before_action :find_site

  def index
    @stock_reports = @site.stock_reports.all
  end

  def show
    @stock_report = @site.stock_reports.find(params[:id])
  end

  private

  def find_site
    @site = Site.find(params[:site_id])
  end

end
