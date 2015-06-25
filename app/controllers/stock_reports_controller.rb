class StockReportsController < ApplicationController

  def index

    @stock_reports = StockReport.all

    # Filters
    @state_filter    = State.all.map{ |s| [ s.state_name, s.id ] }
    @district_filter = District.all.map{ |d| [ d.district_name, d.id ] }

    # use filter to select data

  end

  def show
    @stock_report = StockReport.find(params[:id])
  end

  # Pass national, state and district reports to view.

end
