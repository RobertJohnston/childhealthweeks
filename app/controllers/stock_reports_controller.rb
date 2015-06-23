class StockReportsController < ApplicationController
  def index
    @stock_reports = StockReport.all
  end

  def show
    @stock_report = StockReport.find(params[:id])
  end
end
