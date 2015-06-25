class StockReportsController < ApplicationController

  def index

    @stock_reports = StockReport.all

    # Filters
    @state_options    = State.all.map{ |s| [ s.state_name, s.id ] }
    @district_options = District.all.map{ |d| [ d.district_name, d.id ] }
    @site_options     = Site.all.map{ |s| [ s.site_name, s.id ] }

  end

  def show
    @stock_report = StockReport.find(params[:id])
  end

  # Pass national, state and district reports to view.

end
